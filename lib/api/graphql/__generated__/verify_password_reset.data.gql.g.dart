// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_password_reset.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gverify_password_resetData> _$gverifyPasswordResetDataSerializer =
    new _$Gverify_password_resetDataSerializer();
Serializer<Gverify_password_resetData_verify_password_reset>
    _$gverifyPasswordResetDataVerifyPasswordResetSerializer =
    new _$Gverify_password_resetData_verify_password_resetSerializer();

class _$Gverify_password_resetDataSerializer
    implements StructuredSerializer<Gverify_password_resetData> {
  @override
  final Iterable<Type> types = const [
    Gverify_password_resetData,
    _$Gverify_password_resetData
  ];
  @override
  final String wireName = 'Gverify_password_resetData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gverify_password_resetData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'verify_password_reset',
      serializers.serialize(object.verify_password_reset,
          specifiedType:
              const FullType(Gverify_password_resetData_verify_password_reset)),
    ];

    return result;
  }

  @override
  Gverify_password_resetData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gverify_password_resetDataBuilder();

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
        case 'verify_password_reset':
          result.verify_password_reset.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gverify_password_resetData_verify_password_reset))!
              as Gverify_password_resetData_verify_password_reset);
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_password_resetData_verify_password_resetSerializer
    implements
        StructuredSerializer<Gverify_password_resetData_verify_password_reset> {
  @override
  final Iterable<Type> types = const [
    Gverify_password_resetData_verify_password_reset,
    _$Gverify_password_resetData_verify_password_reset
  ];
  @override
  final String wireName = 'Gverify_password_resetData_verify_password_reset';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gverify_password_resetData_verify_password_reset object,
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
  Gverify_password_resetData_verify_password_reset deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gverify_password_resetData_verify_password_resetBuilder();

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

class _$Gverify_password_resetData extends Gverify_password_resetData {
  @override
  final String G__typename;
  @override
  final Gverify_password_resetData_verify_password_reset verify_password_reset;

  factory _$Gverify_password_resetData(
          [void Function(Gverify_password_resetDataBuilder)? updates]) =>
      (new Gverify_password_resetDataBuilder()..update(updates))._build();

  _$Gverify_password_resetData._(
      {required this.G__typename, required this.verify_password_reset})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gverify_password_resetData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(verify_password_reset,
        r'Gverify_password_resetData', 'verify_password_reset');
  }

  @override
  Gverify_password_resetData rebuild(
          void Function(Gverify_password_resetDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_password_resetDataBuilder toBuilder() =>
      new Gverify_password_resetDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gverify_password_resetData &&
        G__typename == other.G__typename &&
        verify_password_reset == other.verify_password_reset;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), verify_password_reset.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gverify_password_resetData')
          ..add('G__typename', G__typename)
          ..add('verify_password_reset', verify_password_reset))
        .toString();
  }
}

class Gverify_password_resetDataBuilder
    implements
        Builder<Gverify_password_resetData, Gverify_password_resetDataBuilder> {
  _$Gverify_password_resetData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gverify_password_resetData_verify_password_resetBuilder?
      _verify_password_reset;
  Gverify_password_resetData_verify_password_resetBuilder
      get verify_password_reset => _$this._verify_password_reset ??=
          new Gverify_password_resetData_verify_password_resetBuilder();
  set verify_password_reset(
          Gverify_password_resetData_verify_password_resetBuilder?
              verify_password_reset) =>
      _$this._verify_password_reset = verify_password_reset;

  Gverify_password_resetDataBuilder() {
    Gverify_password_resetData._initializeBuilder(this);
  }

  Gverify_password_resetDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _verify_password_reset = $v.verify_password_reset.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gverify_password_resetData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_password_resetData;
  }

  @override
  void update(void Function(Gverify_password_resetDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_password_resetData build() => _build();

  _$Gverify_password_resetData _build() {
    _$Gverify_password_resetData _$result;
    try {
      _$result = _$v ??
          new _$Gverify_password_resetData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gverify_password_resetData', 'G__typename'),
              verify_password_reset: verify_password_reset.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verify_password_reset';
        verify_password_reset.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gverify_password_resetData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gverify_password_resetData_verify_password_reset
    extends Gverify_password_resetData_verify_password_reset {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final String? token;
  @override
  final bool ok;

  factory _$Gverify_password_resetData_verify_password_reset(
          [void Function(
                  Gverify_password_resetData_verify_password_resetBuilder)?
              updates]) =>
      (new Gverify_password_resetData_verify_password_resetBuilder()
            ..update(updates))
          ._build();

  _$Gverify_password_resetData_verify_password_reset._(
      {required this.G__typename,
      required this.message,
      this.token,
      required this.ok})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gverify_password_resetData_verify_password_reset', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(message,
        r'Gverify_password_resetData_verify_password_reset', 'message');
    BuiltValueNullFieldError.checkNotNull(
        ok, r'Gverify_password_resetData_verify_password_reset', 'ok');
  }

  @override
  Gverify_password_resetData_verify_password_reset rebuild(
          void Function(Gverify_password_resetData_verify_password_resetBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_password_resetData_verify_password_resetBuilder toBuilder() =>
      new Gverify_password_resetData_verify_password_resetBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gverify_password_resetData_verify_password_reset &&
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
    return (newBuiltValueToStringHelper(
            r'Gverify_password_resetData_verify_password_reset')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('token', token)
          ..add('ok', ok))
        .toString();
  }
}

class Gverify_password_resetData_verify_password_resetBuilder
    implements
        Builder<Gverify_password_resetData_verify_password_reset,
            Gverify_password_resetData_verify_password_resetBuilder> {
  _$Gverify_password_resetData_verify_password_reset? _$v;

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

  Gverify_password_resetData_verify_password_resetBuilder() {
    Gverify_password_resetData_verify_password_reset._initializeBuilder(this);
  }

  Gverify_password_resetData_verify_password_resetBuilder get _$this {
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
  void replace(Gverify_password_resetData_verify_password_reset other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_password_resetData_verify_password_reset;
  }

  @override
  void update(
      void Function(Gverify_password_resetData_verify_password_resetBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_password_resetData_verify_password_reset build() => _build();

  _$Gverify_password_resetData_verify_password_reset _build() {
    final _$result = _$v ??
        new _$Gverify_password_resetData_verify_password_reset._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gverify_password_resetData_verify_password_reset',
                'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(message,
                r'Gverify_password_resetData_verify_password_reset', 'message'),
            token: token,
            ok: BuiltValueNullFieldError.checkNotNull(
                ok, r'Gverify_password_resetData_verify_password_reset', 'ok'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
