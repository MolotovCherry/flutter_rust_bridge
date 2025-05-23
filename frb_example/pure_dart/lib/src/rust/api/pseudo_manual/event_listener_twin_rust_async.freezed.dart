// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_listener_twin_rust_async.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventTwinRustAsync {
  String get address => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;

  /// Create a copy of EventTwinRustAsync
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventTwinRustAsyncCopyWith<EventTwinRustAsync> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventTwinRustAsyncCopyWith<$Res> {
  factory $EventTwinRustAsyncCopyWith(
          EventTwinRustAsync value, $Res Function(EventTwinRustAsync) then) =
      _$EventTwinRustAsyncCopyWithImpl<$Res, EventTwinRustAsync>;
  @useResult
  $Res call({String address, String payload});
}

/// @nodoc
class _$EventTwinRustAsyncCopyWithImpl<$Res, $Val extends EventTwinRustAsync>
    implements $EventTwinRustAsyncCopyWith<$Res> {
  _$EventTwinRustAsyncCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventTwinRustAsync
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventTwinRustAsyncImplCopyWith<$Res>
    implements $EventTwinRustAsyncCopyWith<$Res> {
  factory _$$EventTwinRustAsyncImplCopyWith(_$EventTwinRustAsyncImpl value,
          $Res Function(_$EventTwinRustAsyncImpl) then) =
      __$$EventTwinRustAsyncImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String payload});
}

/// @nodoc
class __$$EventTwinRustAsyncImplCopyWithImpl<$Res>
    extends _$EventTwinRustAsyncCopyWithImpl<$Res, _$EventTwinRustAsyncImpl>
    implements _$$EventTwinRustAsyncImplCopyWith<$Res> {
  __$$EventTwinRustAsyncImplCopyWithImpl(_$EventTwinRustAsyncImpl _value,
      $Res Function(_$EventTwinRustAsyncImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventTwinRustAsync
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? payload = null,
  }) {
    return _then(_$EventTwinRustAsyncImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventTwinRustAsyncImpl extends _EventTwinRustAsync {
  const _$EventTwinRustAsyncImpl({required this.address, required this.payload})
      : super._();

  @override
  final String address;
  @override
  final String payload;

  @override
  String toString() {
    return 'EventTwinRustAsync(address: $address, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventTwinRustAsyncImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, payload);

  /// Create a copy of EventTwinRustAsync
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventTwinRustAsyncImplCopyWith<_$EventTwinRustAsyncImpl> get copyWith =>
      __$$EventTwinRustAsyncImplCopyWithImpl<_$EventTwinRustAsyncImpl>(
          this, _$identity);
}

abstract class _EventTwinRustAsync extends EventTwinRustAsync {
  const factory _EventTwinRustAsync(
      {required final String address,
      required final String payload}) = _$EventTwinRustAsyncImpl;
  const _EventTwinRustAsync._() : super._();

  @override
  String get address;
  @override
  String get payload;

  /// Create a copy of EventTwinRustAsync
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventTwinRustAsyncImplCopyWith<_$EventTwinRustAsyncImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
