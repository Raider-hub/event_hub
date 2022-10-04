// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resend_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResendOtpState {
  String? get message => throw _privateConstructorUsedError;
  ResendOtpStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResendOtpStateCopyWith<ResendOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendOtpStateCopyWith<$Res> {
  factory $ResendOtpStateCopyWith(
          ResendOtpState value, $Res Function(ResendOtpState) then) =
      _$ResendOtpStateCopyWithImpl<$Res>;
  $Res call({String? message, ResendOtpStatus status});
}

/// @nodoc
class _$ResendOtpStateCopyWithImpl<$Res>
    implements $ResendOtpStateCopyWith<$Res> {
  _$ResendOtpStateCopyWithImpl(this._value, this._then);

  final ResendOtpState _value;
  // ignore: unused_field
  final $Res Function(ResendOtpState) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResendOtpStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_ResendOtpStateCopyWith<$Res>
    implements $ResendOtpStateCopyWith<$Res> {
  factory _$$_ResendOtpStateCopyWith(
          _$_ResendOtpState value, $Res Function(_$_ResendOtpState) then) =
      __$$_ResendOtpStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, ResendOtpStatus status});
}

/// @nodoc
class __$$_ResendOtpStateCopyWithImpl<$Res>
    extends _$ResendOtpStateCopyWithImpl<$Res>
    implements _$$_ResendOtpStateCopyWith<$Res> {
  __$$_ResendOtpStateCopyWithImpl(
      _$_ResendOtpState _value, $Res Function(_$_ResendOtpState) _then)
      : super(_value, (v) => _then(v as _$_ResendOtpState));

  @override
  _$_ResendOtpState get _value => super._value as _$_ResendOtpState;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ResendOtpState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResendOtpStatus,
    ));
  }
}

/// @nodoc

class _$_ResendOtpState implements _ResendOtpState {
  const _$_ResendOtpState({this.message, required this.status});

  @override
  final String? message;
  @override
  final ResendOtpStatus status;

  @override
  String toString() {
    return 'ResendOtpState(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendOtpState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ResendOtpStateCopyWith<_$_ResendOtpState> get copyWith =>
      __$$_ResendOtpStateCopyWithImpl<_$_ResendOtpState>(this, _$identity);
}

abstract class _ResendOtpState implements ResendOtpState {
  const factory _ResendOtpState(
      {final String? message,
      required final ResendOtpStatus status}) = _$_ResendOtpState;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  ResendOtpStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResendOtpStateCopyWith<_$_ResendOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
