// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_userData> _$gcreateUserDataSerializer =
    new _$Gcreate_userDataSerializer();
Serializer<Gcreate_userData_create_user> _$gcreateUserDataCreateUserSerializer =
    new _$Gcreate_userData_create_userSerializer();

class _$Gcreate_userDataSerializer
    implements StructuredSerializer<Gcreate_userData> {
  @override
  final Iterable<Type> types = const [Gcreate_userData, _$Gcreate_userData];
  @override
  final String wireName = 'Gcreate_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gcreate_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'create_user',
      serializers.serialize(object.create_user,
          specifiedType: const FullType(Gcreate_userData_create_user)),
    ];

    return result;
  }

  @override
  Gcreate_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_userDataBuilder();

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
        case 'create_user':
          result.create_user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gcreate_userData_create_user))!
              as Gcreate_userData_create_user);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_userData_create_userSerializer
    implements StructuredSerializer<Gcreate_userData_create_user> {
  @override
  final Iterable<Type> types = const [
    Gcreate_userData_create_user,
    _$Gcreate_userData_create_user
  ];
  @override
  final String wireName = 'Gcreate_userData_create_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_userData_create_user object,
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
  Gcreate_userData_create_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_userData_create_userBuilder();

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

class _$Gcreate_userData extends Gcreate_userData {
  @override
  final String G__typename;
  @override
  final Gcreate_userData_create_user create_user;

  factory _$Gcreate_userData(
          [void Function(Gcreate_userDataBuilder)? updates]) =>
      (new Gcreate_userDataBuilder()..update(updates))._build();

  _$Gcreate_userData._({required this.G__typename, required this.create_user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_userData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        create_user, r'Gcreate_userData', 'create_user');
  }

  @override
  Gcreate_userData rebuild(void Function(Gcreate_userDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_userDataBuilder toBuilder() =>
      new Gcreate_userDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_userData &&
        G__typename == other.G__typename &&
        create_user == other.create_user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), create_user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_userData')
          ..add('G__typename', G__typename)
          ..add('create_user', create_user))
        .toString();
  }
}

class Gcreate_userDataBuilder
    implements Builder<Gcreate_userData, Gcreate_userDataBuilder> {
  _$Gcreate_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcreate_userData_create_userBuilder? _create_user;
  Gcreate_userData_create_userBuilder get create_user =>
      _$this._create_user ??= new Gcreate_userData_create_userBuilder();
  set create_user(Gcreate_userData_create_userBuilder? create_user) =>
      _$this._create_user = create_user;

  Gcreate_userDataBuilder() {
    Gcreate_userData._initializeBuilder(this);
  }

  Gcreate_userDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _create_user = $v.create_user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_userData;
  }

  @override
  void update(void Function(Gcreate_userDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_userData build() => _build();

  _$Gcreate_userData _build() {
    _$Gcreate_userData _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_userData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gcreate_userData', 'G__typename'),
              create_user: create_user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'create_user';
        create_user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_userData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_userData_create_user extends Gcreate_userData_create_user {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final String? token;
  @override
  final bool ok;

  factory _$Gcreate_userData_create_user(
          [void Function(Gcreate_userData_create_userBuilder)? updates]) =>
      (new Gcreate_userData_create_userBuilder()..update(updates))._build();

  _$Gcreate_userData_create_user._(
      {required this.G__typename,
      required this.message,
      this.token,
      required this.ok})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_userData_create_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'Gcreate_userData_create_user', 'message');
    BuiltValueNullFieldError.checkNotNull(
        ok, r'Gcreate_userData_create_user', 'ok');
  }

  @override
  Gcreate_userData_create_user rebuild(
          void Function(Gcreate_userData_create_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_userData_create_userBuilder toBuilder() =>
      new Gcreate_userData_create_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_userData_create_user &&
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
    return (newBuiltValueToStringHelper(r'Gcreate_userData_create_user')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('token', token)
          ..add('ok', ok))
        .toString();
  }
}

class Gcreate_userData_create_userBuilder
    implements
        Builder<Gcreate_userData_create_user,
            Gcreate_userData_create_userBuilder> {
  _$Gcreate_userData_create_user? _$v;

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

  Gcreate_userData_create_userBuilder() {
    Gcreate_userData_create_user._initializeBuilder(this);
  }

  Gcreate_userData_create_userBuilder get _$this {
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
  void replace(Gcreate_userData_create_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_userData_create_user;
  }

  @override
  void update(void Function(Gcreate_userData_create_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_userData_create_user build() => _build();

  _$Gcreate_userData_create_user _build() {
    final _$result = _$v ??
        new _$Gcreate_userData_create_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gcreate_userData_create_user', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'Gcreate_userData_create_user', 'message'),
            token: token,
            ok: BuiltValueNullFieldError.checkNotNull(
                ok, r'Gcreate_userData_create_user', 'ok'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
