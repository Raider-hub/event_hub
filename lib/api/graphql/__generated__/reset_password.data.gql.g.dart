// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Greset_passwordData> _$gresetPasswordDataSerializer =
    new _$Greset_passwordDataSerializer();
Serializer<Greset_passwordData_reset_password>
    _$gresetPasswordDataResetPasswordSerializer =
    new _$Greset_passwordData_reset_passwordSerializer();

class _$Greset_passwordDataSerializer
    implements StructuredSerializer<Greset_passwordData> {
  @override
  final Iterable<Type> types = const [
    Greset_passwordData,
    _$Greset_passwordData
  ];
  @override
  final String wireName = 'Greset_passwordData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Greset_passwordData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'reset_password',
      serializers.serialize(object.reset_password,
          specifiedType: const FullType(Greset_passwordData_reset_password)),
    ];

    return result;
  }

  @override
  Greset_passwordData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Greset_passwordDataBuilder();

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
        case 'reset_password':
          result.reset_password.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Greset_passwordData_reset_password))!
              as Greset_passwordData_reset_password);
          break;
      }
    }

    return result.build();
  }
}

class _$Greset_passwordData_reset_passwordSerializer
    implements StructuredSerializer<Greset_passwordData_reset_password> {
  @override
  final Iterable<Type> types = const [
    Greset_passwordData_reset_password,
    _$Greset_passwordData_reset_password
  ];
  @override
  final String wireName = 'Greset_passwordData_reset_password';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Greset_passwordData_reset_password object,
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
  Greset_passwordData_reset_password deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Greset_passwordData_reset_passwordBuilder();

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

class _$Greset_passwordData extends Greset_passwordData {
  @override
  final String G__typename;
  @override
  final Greset_passwordData_reset_password reset_password;

  factory _$Greset_passwordData(
          [void Function(Greset_passwordDataBuilder)? updates]) =>
      (new Greset_passwordDataBuilder()..update(updates))._build();

  _$Greset_passwordData._(
      {required this.G__typename, required this.reset_password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Greset_passwordData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        reset_password, r'Greset_passwordData', 'reset_password');
  }

  @override
  Greset_passwordData rebuild(
          void Function(Greset_passwordDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Greset_passwordDataBuilder toBuilder() =>
      new Greset_passwordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Greset_passwordData &&
        G__typename == other.G__typename &&
        reset_password == other.reset_password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), reset_password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Greset_passwordData')
          ..add('G__typename', G__typename)
          ..add('reset_password', reset_password))
        .toString();
  }
}

class Greset_passwordDataBuilder
    implements Builder<Greset_passwordData, Greset_passwordDataBuilder> {
  _$Greset_passwordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Greset_passwordData_reset_passwordBuilder? _reset_password;
  Greset_passwordData_reset_passwordBuilder get reset_password =>
      _$this._reset_password ??=
          new Greset_passwordData_reset_passwordBuilder();
  set reset_password(
          Greset_passwordData_reset_passwordBuilder? reset_password) =>
      _$this._reset_password = reset_password;

  Greset_passwordDataBuilder() {
    Greset_passwordData._initializeBuilder(this);
  }

  Greset_passwordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _reset_password = $v.reset_password.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Greset_passwordData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Greset_passwordData;
  }

  @override
  void update(void Function(Greset_passwordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Greset_passwordData build() => _build();

  _$Greset_passwordData _build() {
    _$Greset_passwordData _$result;
    try {
      _$result = _$v ??
          new _$Greset_passwordData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Greset_passwordData', 'G__typename'),
              reset_password: reset_password.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reset_password';
        reset_password.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Greset_passwordData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Greset_passwordData_reset_password
    extends Greset_passwordData_reset_password {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final String? token;
  @override
  final bool ok;

  factory _$Greset_passwordData_reset_password(
          [void Function(Greset_passwordData_reset_passwordBuilder)?
              updates]) =>
      (new Greset_passwordData_reset_passwordBuilder()..update(updates))
          ._build();

  _$Greset_passwordData_reset_password._(
      {required this.G__typename,
      required this.message,
      this.token,
      required this.ok})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Greset_passwordData_reset_password', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'Greset_passwordData_reset_password', 'message');
    BuiltValueNullFieldError.checkNotNull(
        ok, r'Greset_passwordData_reset_password', 'ok');
  }

  @override
  Greset_passwordData_reset_password rebuild(
          void Function(Greset_passwordData_reset_passwordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Greset_passwordData_reset_passwordBuilder toBuilder() =>
      new Greset_passwordData_reset_passwordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Greset_passwordData_reset_password &&
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
    return (newBuiltValueToStringHelper(r'Greset_passwordData_reset_password')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('token', token)
          ..add('ok', ok))
        .toString();
  }
}

class Greset_passwordData_reset_passwordBuilder
    implements
        Builder<Greset_passwordData_reset_password,
            Greset_passwordData_reset_passwordBuilder> {
  _$Greset_passwordData_reset_password? _$v;

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

  Greset_passwordData_reset_passwordBuilder() {
    Greset_passwordData_reset_password._initializeBuilder(this);
  }

  Greset_passwordData_reset_passwordBuilder get _$this {
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
  void replace(Greset_passwordData_reset_password other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Greset_passwordData_reset_password;
  }

  @override
  void update(
      void Function(Greset_passwordData_reset_passwordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Greset_passwordData_reset_password build() => _build();

  _$Greset_passwordData_reset_password _build() {
    final _$result = _$v ??
        new _$Greset_passwordData_reset_password._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Greset_passwordData_reset_password', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'Greset_passwordData_reset_password', 'message'),
            token: token,
            ok: BuiltValueNullFieldError.checkNotNull(
                ok, r'Greset_passwordData_reset_password', 'ok'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
