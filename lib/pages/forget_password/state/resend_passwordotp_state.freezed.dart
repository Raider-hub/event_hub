// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resend_passwordotp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResendPassOtpState {
  String? get message => throw _privateConstructorUsedError;
  ResendPassOtpStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResendPassOtpStateCopyWith<ResendPassOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendPassOtpStateCopyWith<$Res> {
  factory $ResendPassOtpStateCopyWith(
          ResendPassOtpState value, $Res Function(ResendPassOtpState) then) =
      _$ResendPassOtpStateCopyWithImpl<$Res>;
  $Res call({String? message, ResendPassOtpStatus status});
}

/// @nodoc
class _$ResendPassOtpStateCopyWithImpl<$Res>
    implements $ResendPassOtpStateCopyWith<$Res> {
  _$ResendPassOtpStateCopyWithImpl(this._value, this._then);

  final ResendPassOtpState _value;
  // ignore: unused_field
  final $Res Function(ResendPassOtpState) _then;

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
              as ResendPassOtpStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_ResendPassOtpStateCopyWith<$Res>
    implements $ResendPassOtpStateCopyWith<$Res> {
  factory _$$_ResendPassOtpStateCopyWith(_$_ResendPassOtpState value,
          $Res Function(_$_ResendPassOtpState) then) =
      __$$_ResendPassOtpStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, ResendPassOtpStatus status});
}

/// @nodoc
class __$$_ResendPassOtpStateCopyWithImpl<$Res>
    extends _$ResendPassOtpStateCopyWithImpl<$Res>
    implements _$$_ResendPassOtpStateCopyWith<$Res> {
  __$$_ResendPassOtpStateCopyWithImpl(
      _$_ResendPassOtpState _value, $Res Function(_$_ResendPassOtpState) _then)
      : super(_value, (v) => _then(v as _$_ResendPassOtpState));

  @override
  _$_ResendPassOtpState get _value => super._value as _$_ResendPassOtpState;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ResendPassOtpState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResendPassOtpStatus,
    ));
  }
}

/// @nodoc

class _$_ResendPassOtpState implements _ResendPassOtpState {
  const _$_ResendPassOtpState({this.message, required this.status});

  @override
  final String? message;
  @override
  final ResendPassOtpStatus status;

  @override
  String toString() {
    return 'ResendPassOtpState(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendPassOtpState &&
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
  _$$_ResendPassOtpStateCopyWith<_$_ResendPassOtpState> get copyWith =>
      __$$_ResendPassOtpStateCopyWithImpl<_$_ResendPassOtpState>(
          this, _$identity);
}

abstract class _ResendPassOtpState implements ResendPassOtpState {
  const factory _ResendPassOtpState(
      {final String? message,
      required final ResendPassOtpStatus status}) = _$_ResendPassOtpState;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  ResendPassOtpStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResendPassOtpStateCopyWith<_$_ResendPassOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
