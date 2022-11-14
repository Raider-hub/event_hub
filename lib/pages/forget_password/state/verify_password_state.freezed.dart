// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyPasswordState {
  String? get message => throw _privateConstructorUsedError;
  VerifyPasswordStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyPasswordStateCopyWith<VerifyPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPasswordStateCopyWith<$Res> {
  factory $VerifyPasswordStateCopyWith(
          VerifyPasswordState value, $Res Function(VerifyPasswordState) then) =
      _$VerifyPasswordStateCopyWithImpl<$Res>;
  $Res call({String? message, VerifyPasswordStatus status});
}

/// @nodoc
class _$VerifyPasswordStateCopyWithImpl<$Res>
    implements $VerifyPasswordStateCopyWith<$Res> {
  _$VerifyPasswordStateCopyWithImpl(this._value, this._then);

  final VerifyPasswordState _value;
  // ignore: unused_field
  final $Res Function(VerifyPasswordState) _then;

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
              as VerifyPasswordStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_VerifyPasswordStateCopyWith<$Res>
    implements $VerifyPasswordStateCopyWith<$Res> {
  factory _$$_VerifyPasswordStateCopyWith(_$_VerifyPasswordState value,
          $Res Function(_$_VerifyPasswordState) then) =
      __$$_VerifyPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, VerifyPasswordStatus status});
}

/// @nodoc
class __$$_VerifyPasswordStateCopyWithImpl<$Res>
    extends _$VerifyPasswordStateCopyWithImpl<$Res>
    implements _$$_VerifyPasswordStateCopyWith<$Res> {
  __$$_VerifyPasswordStateCopyWithImpl(_$_VerifyPasswordState _value,
      $Res Function(_$_VerifyPasswordState) _then)
      : super(_value, (v) => _then(v as _$_VerifyPasswordState));

  @override
  _$_VerifyPasswordState get _value => super._value as _$_VerifyPasswordState;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_VerifyPasswordState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VerifyPasswordStatus,
    ));
  }
}

/// @nodoc

class _$_VerifyPasswordState implements _VerifyPasswordState {
  const _$_VerifyPasswordState({this.message, required this.status});

  @override
  final String? message;
  @override
  final VerifyPasswordStatus status;

  @override
  String toString() {
    return 'VerifyPasswordState(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyPasswordState &&
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
  _$$_VerifyPasswordStateCopyWith<_$_VerifyPasswordState> get copyWith =>
      __$$_VerifyPasswordStateCopyWithImpl<_$_VerifyPasswordState>(
          this, _$identity);
}

abstract class _VerifyPasswordState implements VerifyPasswordState {
  const factory _VerifyPasswordState(
      {final String? message,
      required final VerifyPasswordStatus status}) = _$_VerifyPasswordState;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  VerifyPasswordStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyPasswordStateCopyWith<_$_VerifyPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
