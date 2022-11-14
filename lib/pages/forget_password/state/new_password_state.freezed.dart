// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewPasswordState {
  String? get message => throw _privateConstructorUsedError;
  NewPasswordStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewPasswordStateCopyWith<NewPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordStateCopyWith<$Res> {
  factory $NewPasswordStateCopyWith(
          NewPasswordState value, $Res Function(NewPasswordState) then) =
      _$NewPasswordStateCopyWithImpl<$Res>;
  $Res call({String? message, NewPasswordStatus status});
}

/// @nodoc
class _$NewPasswordStateCopyWithImpl<$Res>
    implements $NewPasswordStateCopyWith<$Res> {
  _$NewPasswordStateCopyWithImpl(this._value, this._then);

  final NewPasswordState _value;
  // ignore: unused_field
  final $Res Function(NewPasswordState) _then;

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
              as NewPasswordStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_NewPasswordStateCopyWith<$Res>
    implements $NewPasswordStateCopyWith<$Res> {
  factory _$$_NewPasswordStateCopyWith(
          _$_NewPasswordState value, $Res Function(_$_NewPasswordState) then) =
      __$$_NewPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, NewPasswordStatus status});
}

/// @nodoc
class __$$_NewPasswordStateCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res>
    implements _$$_NewPasswordStateCopyWith<$Res> {
  __$$_NewPasswordStateCopyWithImpl(
      _$_NewPasswordState _value, $Res Function(_$_NewPasswordState) _then)
      : super(_value, (v) => _then(v as _$_NewPasswordState));

  @override
  _$_NewPasswordState get _value => super._value as _$_NewPasswordState;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_NewPasswordState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NewPasswordStatus,
    ));
  }
}

/// @nodoc

class _$_NewPasswordState implements _NewPasswordState {
  const _$_NewPasswordState({this.message, required this.status});

  @override
  final String? message;
  @override
  final NewPasswordStatus status;

  @override
  String toString() {
    return 'NewPasswordState(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPasswordState &&
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
  _$$_NewPasswordStateCopyWith<_$_NewPasswordState> get copyWith =>
      __$$_NewPasswordStateCopyWithImpl<_$_NewPasswordState>(this, _$identity);
}

abstract class _NewPasswordState implements NewPasswordState {
  const factory _NewPasswordState(
      {final String? message,
      required final NewPasswordStatus status}) = _$_NewPasswordState;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  NewPasswordStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NewPasswordStateCopyWith<_$_NewPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
