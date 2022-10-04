// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forget_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgetPasswordState {
  String? get message => throw _privateConstructorUsedError;
  ForgetPasswordStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgetPasswordStateCopyWith<ForgetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordStateCopyWith<$Res> {
  factory $ForgetPasswordStateCopyWith(
          ForgetPasswordState value, $Res Function(ForgetPasswordState) then) =
      _$ForgetPasswordStateCopyWithImpl<$Res>;
  $Res call({String? message, ForgetPasswordStatus status});
}

/// @nodoc
class _$ForgetPasswordStateCopyWithImpl<$Res>
    implements $ForgetPasswordStateCopyWith<$Res> {
  _$ForgetPasswordStateCopyWithImpl(this._value, this._then);

  final ForgetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgetPasswordState) _then;

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
              as ForgetPasswordStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_ForgetPasswordStateCopyWith<$Res>
    implements $ForgetPasswordStateCopyWith<$Res> {
  factory _$$_ForgetPasswordStateCopyWith(_$_ForgetPasswordState value,
          $Res Function(_$_ForgetPasswordState) then) =
      __$$_ForgetPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, ForgetPasswordStatus status});
}

/// @nodoc
class __$$_ForgetPasswordStateCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res>
    implements _$$_ForgetPasswordStateCopyWith<$Res> {
  __$$_ForgetPasswordStateCopyWithImpl(_$_ForgetPasswordState _value,
      $Res Function(_$_ForgetPasswordState) _then)
      : super(_value, (v) => _then(v as _$_ForgetPasswordState));

  @override
  _$_ForgetPasswordState get _value => super._value as _$_ForgetPasswordState;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ForgetPasswordState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ForgetPasswordStatus,
    ));
  }
}

/// @nodoc

class _$_ForgetPasswordState implements _ForgetPasswordState {
  const _$_ForgetPasswordState({this.message, required this.status});

  @override
  final String? message;
  @override
  final ForgetPasswordStatus status;

  @override
  String toString() {
    return 'ForgetPasswordState(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgetPasswordState &&
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
  _$$_ForgetPasswordStateCopyWith<_$_ForgetPasswordState> get copyWith =>
      __$$_ForgetPasswordStateCopyWithImpl<_$_ForgetPasswordState>(
          this, _$identity);
}

abstract class _ForgetPasswordState implements ForgetPasswordState {
  const factory _ForgetPasswordState(
      {final String? message,
      required final ForgetPasswordStatus status}) = _$_ForgetPasswordState;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  ForgetPasswordStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ForgetPasswordStateCopyWith<_$_ForgetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
