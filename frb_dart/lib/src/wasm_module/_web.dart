import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter_rust_bridge/src/platform_utils/_web.dart';
import 'package:web/web.dart' as web;

bool? _isModuleCache;

Future<bool> _isModule(String root) async {
  var isModule = _isModuleCache;
  if (isModule != null) {
    return isModule;
  }

  var dir = root.split('/').first;

  final init = web.RequestInit(method: 'GET');

  try {
    final req = await web.window.fetch('$dir/package.json'.toJS, init).toDart;

    if (req.ok)  {
      final text = (await req.text().toDart).toDart;

      final Map<String, dynamic> metadata = jsonDecode(text);
      _isModuleCache = false;

      if (metadata.containsKey('type')) {
        String type = metadata['type'];
        _isModuleCache = type == 'module';
      }

      return _isModuleCache ?? false;
    }
  } catch (e) {
    throw 'failed to fetch pkg package.json metadata: $e';
  }

  throw 'failed to fetch pkg package.json metadata';
}

/// {@macro flutter_rust_bridge.internal}
Future<void> initializeWasmModule({required String root}) async {
  _ensureCrossOriginIsolated();

  var isModule = await _isModule(root);

  var script = web.HTMLScriptElement()
      ..src = '$root.js';

  if (isModule) {
    script.type = "module";
  }

  web.document.head!.append(script);

  await script.onLoad.first;

  if (isModule) {
    var promise = jsEval('''
        return import("./$root.js").then((module) => {
          window.wasm_bindgen = Object.assign(module.default, { initSync: module.initSync }, module);
        });
    ''') as JSPromise;
    await promise.toDart;
  } else {
    jsEval('window.wasm_bindgen = wasm_bindgen');
  }

  await _jsWasmBindgen('${root}_bg.wasm').toDart;
}

@JS('wasm_bindgen')
external JSPromise _jsWasmBindgen(String path);

void _ensureCrossOriginIsolated() {
  switch (crossOriginIsolated) {
    case false:
      web.console.warn(
          'Warning: Buffers cannot be shared due to missing cross-origin headers. Please refer to https://fzyzcjy.github.io/flutter_rust_bridge/manual/miscellaneous/web-cross-origin for details.'
              .toJS);
      return;
    case true:
      return;
    case null:
      web.console.warn(
          'Warning: crossOriginIsolated is null, browser might not support buffer sharing.'
              .toJS);
      return;
  }
}
