// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verifiy_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyOtpState {
  String? get message => throw _privateConstructorUsedError;
  VerifyOtpStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyOtpStateCopyWith<VerifyOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpStateCopyWith<$Res> {
  factory $VerifyOtpStateCopyWith(
          VerifyOtpState value, $Res Function(VerifyOtpState) then) =
      _$VerifyOtpStateCopyWithImpl<$Res>;
  $Res call({String? message, VerifyOtpStatus status});
}

/// @nodoc
class _$VerifyOtpStateCopyWithImpl<$Res>
    implements $VerifyOtpStateCopyWith<$Res> {
  _$VerifyOtpStateCopyWithImpl(this._value, this._then);

  final VerifyOtpState _value;
  // ignore: unused_field
  final $Res Function(VerifyOtpState) _then;

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
              as VerifyOtpStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_VerifyOtpStateCopyWith<$Res>
    implements $VerifyOtpStateCopyWith<$Res> {
  factory _$$_VerifyOtpStateCopyWith(
          _$_VerifyOtpState value, $Res Function(_$_VerifyOtpState) then) =
      __$$_VerifyOtpStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, VerifyOtpStatus status});
}

/// @nodoc
class __$$_VerifyOtpStateCopyWithImpl<$Res>
    extends _$VerifyOtpStateCopyWithImpl<$Res>
    implements _$$_VerifyOtpStateCopyWith<$Res> {
  __$$_VerifyOtpStateCopyWithImpl(
      _$_VerifyOtpState _value, $Res Function(_$_VerifyOtpState) _then)
      : super(_value, (v) => _then(v as _$_VerifyOtpState));

  @override
  _$_VerifyOtpState get _value => super._value as _$_VerifyOtpState;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_VerifyOtpState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VerifyOtpStatus,
    ));
  }
}

/// @nodoc

class _$_VerifyOtpState implements _VerifyOtpState {
  const _$_VerifyOtpState({this.message, required this.status});

  @override
  final String? message;
  @override
  final VerifyOtpStatus status;

  @override
  String toString() {
    return 'VerifyOtpState(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtpState &&
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
  _$$_VerifyOtpStateCopyWith<_$_VerifyOtpState> get copyWith =>
      __$$_VerifyOtpStateCopyWithImpl<_$_VerifyOtpState>(this, _$identity);
}

abstract class _VerifyOtpState implements VerifyOtpState {
  const factory _VerifyOtpState(
      {final String? message,
      required final VerifyOtpStatus status}) = _$_VerifyOtpState;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  VerifyOtpStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOtpStateCopyWith<_$_VerifyOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
