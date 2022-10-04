// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gverify_otpData> _$gverifyOtpDataSerializer =
    new _$Gverify_otpDataSerializer();
Serializer<Gverify_otpData_verify_otp> _$gverifyOtpDataVerifyOtpSerializer =
    new _$Gverify_otpData_verify_otpSerializer();

class _$Gverify_otpDataSerializer
    implements StructuredSerializer<Gverify_otpData> {
  @override
  final Iterable<Type> types = const [Gverify_otpData, _$Gverify_otpData];
  @override
  final String wireName = 'Gverify_otpData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gverify_otpData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'verify_otp',
      serializers.serialize(object.verify_otp,
          specifiedType: const FullType(Gverify_otpData_verify_otp)),
    ];

    return result;
  }

  @override
  Gverify_otpData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gverify_otpDataBuilder();

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
        case 'verify_otp':
          result.verify_otp.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gverify_otpData_verify_otp))!
              as Gverify_otpData_verify_otp);
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_otpData_verify_otpSerializer
    implements StructuredSerializer<Gverify_otpData_verify_otp> {
  @override
  final Iterable<Type> types = const [
    Gverify_otpData_verify_otp,
    _$Gverify_otpData_verify_otp
  ];
  @override
  final String wireName = 'Gverify_otpData_verify_otp';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gverify_otpData_verify_otp object,
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
  Gverify_otpData_verify_otp deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gverify_otpData_verify_otpBuilder();

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
        case 'ok':
          result.ok = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_otpData extends Gverify_otpData {
  @override
  final String G__typename;
  @override
  final Gverify_otpData_verify_otp verify_otp;

  factory _$Gverify_otpData([void Function(Gverify_otpDataBuilder)? updates]) =>
      (new Gverify_otpDataBuilder()..update(updates))._build();

  _$Gverify_otpData._({required this.G__typename, required this.verify_otp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gverify_otpData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        verify_otp, r'Gverify_otpData', 'verify_otp');
  }

  @override
  Gverify_otpData rebuild(void Function(Gverify_otpDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_otpDataBuilder toBuilder() =>
      new Gverify_otpDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gverify_otpData &&
        G__typename == other.G__typename &&
        verify_otp == other.verify_otp;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), verify_otp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gverify_otpData')
          ..add('G__typename', G__typename)
          ..add('verify_otp', verify_otp))
        .toString();
  }
}

class Gverify_otpDataBuilder
    implements Builder<Gverify_otpData, Gverify_otpDataBuilder> {
  _$Gverify_otpData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gverify_otpData_verify_otpBuilder? _verify_otp;
  Gverify_otpData_verify_otpBuilder get verify_otp =>
      _$this._verify_otp ??= new Gverify_otpData_verify_otpBuilder();
  set verify_otp(Gverify_otpData_verify_otpBuilder? verify_otp) =>
      _$this._verify_otp = verify_otp;

  Gverify_otpDataBuilder() {
    Gverify_otpData._initializeBuilder(this);
  }

  Gverify_otpDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _verify_otp = $v.verify_otp.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gverify_otpData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_otpData;
  }

  @override
  void update(void Function(Gverify_otpDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_otpData build() => _build();

  _$Gverify_otpData _build() {
    _$Gverify_otpData _$result;
    try {
      _$result = _$v ??
          new _$Gverify_otpData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gverify_otpData', 'G__typename'),
              verify_otp: verify_otp.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verify_otp';
        verify_otp.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gverify_otpData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gverify_otpData_verify_otp extends Gverify_otpData_verify_otp {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool ok;
  @override
  final String? token;

  factory _$Gverify_otpData_verify_otp(
          [void Function(Gverify_otpData_verify_otpBuilder)? updates]) =>
      (new Gverify_otpData_verify_otpBuilder()..update(updates))._build();

  _$Gverify_otpData_verify_otp._(
      {required this.G__typename,
      required this.message,
      required this.ok,
      this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gverify_otpData_verify_otp', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'Gverify_otpData_verify_otp', 'message');
    BuiltValueNullFieldError.checkNotNull(
        ok, r'Gverify_otpData_verify_otp', 'ok');
  }

  @override
  Gverify_otpData_verify_otp rebuild(
          void Function(Gverify_otpData_verify_otpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_otpData_verify_otpBuilder toBuilder() =>
      new Gverify_otpData_verify_otpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gverify_otpData_verify_otp &&
        G__typename == other.G__typename &&
        message == other.message &&
        ok == other.ok &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), message.hashCode), ok.hashCode),
        token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gverify_otpData_verify_otp')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('ok', ok)
          ..add('token', token))
        .toString();
  }
}

class Gverify_otpData_verify_otpBuilder
    implements
        Builder<Gverify_otpData_verify_otp, Gverify_otpData_verify_otpBuilder> {
  _$Gverify_otpData_verify_otp? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  Gverify_otpData_verify_otpBuilder() {
    Gverify_otpData_verify_otp._initializeBuilder(this);
  }

  Gverify_otpData_verify_otpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _ok = $v.ok;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gverify_otpData_verify_otp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_otpData_verify_otp;
  }

  @override
  void update(void Function(Gverify_otpData_verify_otpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_otpData_verify_otp build() => _build();

  _$Gverify_otpData_verify_otp _build() {
    final _$result = _$v ??
        new _$Gverify_otpData_verify_otp._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gverify_otpData_verify_otp', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'Gverify_otpData_verify_otp', 'message'),
            ok: BuiltValueNullFieldError.checkNotNull(
                ok, r'Gverify_otpData_verify_otp', 'ok'),
            token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
