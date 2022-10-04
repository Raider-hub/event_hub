// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gforgot_passwordData> _$gforgotPasswordDataSerializer =
    new _$Gforgot_passwordDataSerializer();
Serializer<Gforgot_passwordData_forgot_password>
    _$gforgotPasswordDataForgotPasswordSerializer =
    new _$Gforgot_passwordData_forgot_passwordSerializer();

class _$Gforgot_passwordDataSerializer
    implements StructuredSerializer<Gforgot_passwordData> {
  @override
  final Iterable<Type> types = const [
    Gforgot_passwordData,
    _$Gforgot_passwordData
  ];
  @override
  final String wireName = 'Gforgot_passwordData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gforgot_passwordData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'forgot_password',
      serializers.serialize(object.forgot_password,
          specifiedType: const FullType(Gforgot_passwordData_forgot_password)),
    ];

    return result;
  }

  @override
  Gforgot_passwordData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gforgot_passwordDataBuilder();

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
        case 'forgot_password':
          result.forgot_password.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gforgot_passwordData_forgot_password))!
              as Gforgot_passwordData_forgot_password);
          break;
      }
    }

    return result.build();
  }
}

class _$Gforgot_passwordData_forgot_passwordSerializer
    implements StructuredSerializer<Gforgot_passwordData_forgot_password> {
  @override
  final Iterable<Type> types = const [
    Gforgot_passwordData_forgot_password,
    _$Gforgot_passwordData_forgot_password
  ];
  @override
  final String wireName = 'Gforgot_passwordData_forgot_password';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gforgot_passwordData_forgot_password object,
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
  Gforgot_passwordData_forgot_password deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gforgot_passwordData_forgot_passwordBuilder();

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

class _$Gforgot_passwordData extends Gforgot_passwordData {
  @override
  final String G__typename;
  @override
  final Gforgot_passwordData_forgot_password forgot_password;

  factory _$Gforgot_passwordData(
          [void Function(Gforgot_passwordDataBuilder)? updates]) =>
      (new Gforgot_passwordDataBuilder()..update(updates))._build();

  _$Gforgot_passwordData._(
      {required this.G__typename, required this.forgot_password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gforgot_passwordData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        forgot_password, r'Gforgot_passwordData', 'forgot_password');
  }

  @override
  Gforgot_passwordData rebuild(
          void Function(Gforgot_passwordDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gforgot_passwordDataBuilder toBuilder() =>
      new Gforgot_passwordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gforgot_passwordData &&
        G__typename == other.G__typename &&
        forgot_password == other.forgot_password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), forgot_password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gforgot_passwordData')
          ..add('G__typename', G__typename)
          ..add('forgot_password', forgot_password))
        .toString();
  }
}

class Gforgot_passwordDataBuilder
    implements Builder<Gforgot_passwordData, Gforgot_passwordDataBuilder> {
  _$Gforgot_passwordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gforgot_passwordData_forgot_passwordBuilder? _forgot_password;
  Gforgot_passwordData_forgot_passwordBuilder get forgot_password =>
      _$this._forgot_password ??=
          new Gforgot_passwordData_forgot_passwordBuilder();
  set forgot_password(
          Gforgot_passwordData_forgot_passwordBuilder? forgot_password) =>
      _$this._forgot_password = forgot_password;

  Gforgot_passwordDataBuilder() {
    Gforgot_passwordData._initializeBuilder(this);
  }

  Gforgot_passwordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _forgot_password = $v.forgot_password.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gforgot_passwordData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gforgot_passwordData;
  }

  @override
  void update(void Function(Gforgot_passwordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gforgot_passwordData build() => _build();

  _$Gforgot_passwordData _build() {
    _$Gforgot_passwordData _$result;
    try {
      _$result = _$v ??
          new _$Gforgot_passwordData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gforgot_passwordData', 'G__typename'),
              forgot_password: forgot_password.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'forgot_password';
        forgot_password.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gforgot_passwordData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gforgot_passwordData_forgot_password
    extends Gforgot_passwordData_forgot_password {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final String? token;
  @override
  final bool ok;

  factory _$Gforgot_passwordData_forgot_password(
          [void Function(Gforgot_passwordData_forgot_passwordBuilder)?
              updates]) =>
      (new Gforgot_passwordData_forgot_passwordBuilder()..update(updates))
          ._build();

  _$Gforgot_passwordData_forgot_password._(
      {required this.G__typename,
      required this.message,
      this.token,
      required this.ok})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gforgot_passwordData_forgot_password', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'Gforgot_passwordData_forgot_password', 'message');
    BuiltValueNullFieldError.checkNotNull(
        ok, r'Gforgot_passwordData_forgot_password', 'ok');
  }

  @override
  Gforgot_passwordData_forgot_password rebuild(
          void Function(Gforgot_passwordData_forgot_passwordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gforgot_passwordData_forgot_passwordBuilder toBuilder() =>
      new Gforgot_passwordData_forgot_passwordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gforgot_passwordData_forgot_password &&
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
    return (newBuiltValueToStringHelper(r'Gforgot_passwordData_forgot_password')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('token', token)
          ..add('ok', ok))
        .toString();
  }
}

class Gforgot_passwordData_forgot_passwordBuilder
    implements
        Builder<Gforgot_passwordData_forgot_password,
            Gforgot_passwordData_forgot_passwordBuilder> {
  _$Gforgot_passwordData_forgot_password? _$v;

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

  Gforgot_passwordData_forgot_passwordBuilder() {
    Gforgot_passwordData_forgot_password._initializeBuilder(this);
  }

  Gforgot_passwordData_forgot_passwordBuilder get _$this {
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
  void replace(Gforgot_passwordData_forgot_password other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gforgot_passwordData_forgot_password;
  }

  @override
  void update(
      void Function(Gforgot_passwordData_forgot_passwordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gforgot_passwordData_forgot_password build() => _build();

  _$Gforgot_passwordData_forgot_password _build() {
    final _$result = _$v ??
        new _$Gforgot_passwordData_forgot_password._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gforgot_passwordData_forgot_password', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'Gforgot_passwordData_forgot_password', 'message'),
            token: token,
            ok: BuiltValueNullFieldError.checkNotNull(
                ok, r'Gforgot_passwordData_forgot_password', 'ok'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
