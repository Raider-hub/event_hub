// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Greset_passwordVars> _$gresetPasswordVarsSerializer =
    new _$Greset_passwordVarsSerializer();

class _$Greset_passwordVarsSerializer
    implements StructuredSerializer<Greset_passwordVars> {
  @override
  final Iterable<Type> types = const [
    Greset_passwordVars,
    _$Greset_passwordVars
  ];
  @override
  final String wireName = 'Greset_passwordVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Greset_passwordVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Greset_passwordVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Greset_passwordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Greset_passwordVars extends Greset_passwordVars {
  @override
  final String password;

  factory _$Greset_passwordVars(
          [void Function(Greset_passwordVarsBuilder)? updates]) =>
      (new Greset_passwordVarsBuilder()..update(updates))._build();

  _$Greset_passwordVars._({required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        password, r'Greset_passwordVars', 'password');
  }

  @override
  Greset_passwordVars rebuild(
          void Function(Greset_passwordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Greset_passwordVarsBuilder toBuilder() =>
      new Greset_passwordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Greset_passwordVars && password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(0, password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Greset_passwordVars')
          ..add('password', password))
        .toString();
  }
}

class Greset_passwordVarsBuilder
    implements Builder<Greset_passwordVars, Greset_passwordVarsBuilder> {
  _$Greset_passwordVars? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  Greset_passwordVarsBuilder();

  Greset_passwordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Greset_passwordVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Greset_passwordVars;
  }

  @override
  void update(void Function(Greset_passwordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Greset_passwordVars build() => _build();

  _$Greset_passwordVars _build() {
    final _$result = _$v ??
        new _$Greset_passwordVars._(
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'Greset_passwordVars', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
