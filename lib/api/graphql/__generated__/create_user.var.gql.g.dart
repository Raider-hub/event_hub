// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_userVars> _$gcreateUserVarsSerializer =
    new _$Gcreate_userVarsSerializer();

class _$Gcreate_userVarsSerializer
    implements StructuredSerializer<Gcreate_userVars> {
  @override
  final Iterable<Type> types = const [Gcreate_userVars, _$Gcreate_userVars];
  @override
  final String wireName = 'Gcreate_userVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gcreate_userVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'fullname',
      serializers.serialize(object.fullname,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gcreate_userVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_userVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_userVars extends Gcreate_userVars {
  @override
  final String fullname;
  @override
  final String email;
  @override
  final String password;

  factory _$Gcreate_userVars(
          [void Function(Gcreate_userVarsBuilder)? updates]) =>
      (new Gcreate_userVarsBuilder()..update(updates))._build();

  _$Gcreate_userVars._(
      {required this.fullname, required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fullname, r'Gcreate_userVars', 'fullname');
    BuiltValueNullFieldError.checkNotNull(email, r'Gcreate_userVars', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'Gcreate_userVars', 'password');
  }

  @override
  Gcreate_userVars rebuild(void Function(Gcreate_userVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_userVarsBuilder toBuilder() =>
      new Gcreate_userVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_userVars &&
        fullname == other.fullname &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, fullname.hashCode), email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_userVars')
          ..add('fullname', fullname)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class Gcreate_userVarsBuilder
    implements Builder<Gcreate_userVars, Gcreate_userVarsBuilder> {
  _$Gcreate_userVars? _$v;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  Gcreate_userVarsBuilder();

  Gcreate_userVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullname = $v.fullname;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_userVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_userVars;
  }

  @override
  void update(void Function(Gcreate_userVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_userVars build() => _build();

  _$Gcreate_userVars _build() {
    final _$result = _$v ??
        new _$Gcreate_userVars._(
            fullname: BuiltValueNullFieldError.checkNotNull(
                fullname, r'Gcreate_userVars', 'fullname'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'Gcreate_userVars', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'Gcreate_userVars', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
