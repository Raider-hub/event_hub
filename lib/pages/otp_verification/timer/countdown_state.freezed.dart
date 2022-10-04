// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countdown_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountDownState {
  Duration get timeLeft => throw _privateConstructorUsedError;
  CountDownStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountDownStateCopyWith<CountDownState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountDownStateCopyWith<$Res> {
  factory $CountDownStateCopyWith(
          CountDownState value, $Res Function(CountDownState) then) =
      _$CountDownStateCopyWithImpl<$Res>;
  $Res call({Duration timeLeft, CountDownStatus status});
}

/// @nodoc
class _$CountDownStateCopyWithImpl<$Res>
    implements $CountDownStateCopyWith<$Res> {
  _$CountDownStateCopyWithImpl(this._value, this._then);

  final CountDownState _value;
  // ignore: unused_field
  final $Res Function(CountDownState) _then;

  @override
  $Res call({
    Object? timeLeft = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      timeLeft: timeLeft == freezed
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as Duration,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CountDownStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_CountDownStateCopyWith<$Res>
    implements $CountDownStateCopyWith<$Res> {
  factory _$$_CountDownStateCopyWith(
          _$_CountDownState value, $Res Function(_$_CountDownState) then) =
      __$$_CountDownStateCopyWithImpl<$Res>;
  @override
  $Res call({Duration timeLeft, CountDownStatus status});
}

/// @nodoc
class __$$_CountDownStateCopyWithImpl<$Res>
    extends _$CountDownStateCopyWithImpl<$Res>
    implements _$$_CountDownStateCopyWith<$Res> {
  __$$_CountDownStateCopyWithImpl(
      _$_CountDownState _value, $Res Function(_$_CountDownState) _then)
      : super(_value, (v) => _then(v as _$_CountDownState));

  @override
  _$_CountDownState get _value => super._value as _$_CountDownState;

  @override
  $Res call({
    Object? timeLeft = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_CountDownState(
      timeLeft: timeLeft == freezed
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as Duration,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CountDownStatus,
    ));
  }
}

/// @nodoc

class _$_CountDownState implements _CountDownState {
  const _$_CountDownState({required this.timeLeft, required this.status});

  @override
  final Duration timeLeft;
  @override
  final CountDownStatus status;

  @override
  String toString() {
    return 'CountDownState(timeLeft: $timeLeft, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountDownState &&
            const DeepCollectionEquality().equals(other.timeLeft, timeLeft) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timeLeft),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_CountDownStateCopyWith<_$_CountDownState> get copyWith =>
      __$$_CountDownStateCopyWithImpl<_$_CountDownState>(this, _$identity);
}

abstract class _CountDownState implements CountDownState {
  const factory _CountDownState(
      {required final Duration timeLeft,
      required final CountDownStatus status}) = _$_CountDownState;

  @override
  Duration get timeLeft => throw _privateConstructorUsedError;
  @override
  CountDownStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CountDownStateCopyWith<_$_CountDownState> get copyWith =>
      throw _privateConstructorUsedError;
}
