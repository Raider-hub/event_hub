// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GloginData> _$gloginDataSerializer = new _$GloginDataSerializer();
Serializer<GloginData_login> _$gloginDataLoginSerializer =
    new _$GloginData_loginSerializer();

class _$GloginDataSerializer implements StructuredSerializer<GloginData> {
  @override
  final Iterable<Type> types = const [GloginData, _$GloginData];
  @override
  final String wireName = 'GloginData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloginData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(GloginData_login)),
    ];

    return result;
  }

  @override
  GloginData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloginDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'login':
          result.login.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GloginData_login))!
              as GloginData_login);
          break;
      }
    }

    return result.build();
  }
}

class _$GloginData_loginSerializer
    implements StructuredSerializer<GloginData_login> {
  @override
  final Iterable<Type> types = const [GloginData_login, _$GloginData_login];
  @override
  final String wireName = 'GloginData_login';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloginData_login object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'ok',
      serializers.serialize(object.ok, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GloginData_login deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloginData_loginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ok':
          result.ok = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GloginData extends GloginData {
  @override
  final String G__typename;
  @override
  final GloginData_login login;

  factory _$GloginData([void Function(GloginDataBuilder)? updates]) =>
      (new GloginDataBuilder()..update(updates))._build();

  _$GloginData._({required this.G__typename, required this.login}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GloginData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(login, r'GloginData', 'login');
  }

  @override
  GloginData rebuild(void Function(GloginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloginDataBuilder toBuilder() => new GloginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloginData &&
        G__typename == other.G__typename &&
        login == other.login;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), login.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GloginData')
          ..add('G__typename', G__typename)
          ..add('login', login))
        .toString();
  }
}

class GloginDataBuilder implements Builder<GloginData, GloginDataBuilder> {
  _$GloginData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GloginData_loginBuilder? _login;
  GloginData_loginBuilder get login =>
      _$this._login ??= new GloginData_loginBuilder();
  set login(GloginData_loginBuilder? login) => _$this._login = login;

  GloginDataBuilder() {
    GloginData._initializeBuilder(this);
  }

  GloginDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloginData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloginData;
  }

  @override
  void update(void Function(GloginDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GloginData build() => _build();

  _$GloginData _build() {
    _$GloginData _$result;
    try {
      _$result = _$v ??
          new _$GloginData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GloginData', 'G__typename'),
              login: login.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'login';
        login.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GloginData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GloginData_login extends GloginData_login {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final String? token;
  @override
  final bool ok;

  factory _$GloginData_login(
          [void Function(GloginData_loginBuilder)? updates]) =>
      (new GloginData_loginBuilder()..update(updates))._build();

  _$GloginData_login._(
      {required this.G__typename,
      required this.message,
      this.token,
      required this.ok})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GloginData_login', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GloginData_login', 'message');
    BuiltValueNullFieldError.checkNotNull(ok, r'GloginData_login', 'ok');
  }

  @override
  GloginData_login rebuild(void Function(GloginData_loginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloginData_loginBuilder toBuilder() =>
      new GloginData_loginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloginData_login &&
        G__typename == other.G__typename &&
        message == other.message &&
        token == other.token &&
        ok == other.ok;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), message.hashCode),
            token.hashCode),
        ok.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GloginData_login')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('token', token)
          ..add('ok', ok))
        .toString();
  }
}

class GloginData_loginBuilder
    implements Builder<GloginData_login, GloginData_loginBuilder> {
  _$GloginData_login? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  GloginData_loginBuilder() {
    GloginData_login._initializeBuilder(this);
  }

  GloginData_loginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _token = $v.token;
      _ok = $v.ok;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloginData_login other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloginData_login;
  }

  @override
  void update(void Function(GloginData_loginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GloginData_login build() => _build();

  _$GloginData_login _build() {
    final _$result = _$v ??
        new _$GloginData_login._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GloginData_login', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'GloginData_login', 'message'),
            token: token,
            ok: BuiltValueNullFieldError.checkNotNull(
                ok, r'GloginData_login', 'ok'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
