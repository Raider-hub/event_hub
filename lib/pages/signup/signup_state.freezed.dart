// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateUserState {
  String? get token => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CreateUserStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateUserStateCopyWith<CreateUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserStateCopyWith<$Res> {
  factory $CreateUserStateCopyWith(
          CreateUserState value, $Res Function(CreateUserState) then) =
      _$CreateUserStateCopyWithImpl<$Res>;
  $Res call({String? token, String? message, CreateUserStatus status});
}

/// @nodoc
class _$CreateUserStateCopyWithImpl<$Res>
    implements $CreateUserStateCopyWith<$Res> {
  _$CreateUserStateCopyWithImpl(this._value, this._then);

  final CreateUserState _value;
  // ignore: unused_field
  final $Res Function(CreateUserState) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreateUserStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateUserStateCopyWith<$Res>
    implements $CreateUserStateCopyWith<$Res> {
  factory _$$_CreateUserStateCopyWith(
          _$_CreateUserState value, $Res Function(_$_CreateUserState) then) =
      __$$_CreateUserStateCopyWithImpl<$Res>;
  @override
  $Res call({String? token, String? message, CreateUserStatus status});
}

/// @nodoc
class __$$_CreateUserStateCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res>
    implements _$$_CreateUserStateCopyWith<$Res> {
  __$$_CreateUserStateCopyWithImpl(
      _$_CreateUserState _value, $Res Function(_$_CreateUserState) _then)
      : super(_value, (v) => _then(v as _$_CreateUserState));

  @override
  _$_CreateUserState get _value => super._value as _$_CreateUserState;

  @override
  $Res call({
    Object? token = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_CreateUserState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreateUserStatus,
    ));
  }
}

/// @nodoc

class _$_CreateUserState implements _CreateUserState {
  const _$_CreateUserState({this.token, this.message, required this.status});

  @override
  final String? token;
  @override
  final String? message;
  @override
  final CreateUserStatus status;

  @override
  String toString() {
    return 'CreateUserState(token: $token, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserState &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_CreateUserStateCopyWith<_$_CreateUserState> get copyWith =>
      __$$_CreateUserStateCopyWithImpl<_$_CreateUserState>(this, _$identity);
}

abstract class _CreateUserState implements CreateUserState {
  const factory _CreateUserState(
      {final String? token,
      final String? message,
      required final CreateUserStatus status}) = _$_CreateUserState;

  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  CreateUserStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserStateCopyWith<_$_CreateUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
