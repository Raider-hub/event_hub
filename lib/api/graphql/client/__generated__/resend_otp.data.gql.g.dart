// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_otp.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gresend_otpData> _$gresendOtpDataSerializer =
    new _$Gresend_otpDataSerializer();
Serializer<Gresend_otpData_resend_otp> _$gresendOtpDataResendOtpSerializer =
    new _$Gresend_otpData_resend_otpSerializer();

class _$Gresend_otpDataSerializer
    implements StructuredSerializer<Gresend_otpData> {
  @override
  final Iterable<Type> types = const [Gresend_otpData, _$Gresend_otpData];
  @override
  final String wireName = 'Gresend_otpData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gresend_otpData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'resend_otp',
      serializers.serialize(object.resend_otp,
          specifiedType: const FullType(Gresend_otpData_resend_otp)),
    ];

    return result;
  }

  @override
  Gresend_otpData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gresend_otpDataBuilder();

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
        case 'resend_otp':
          result.resend_otp.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gresend_otpData_resend_otp))!
              as Gresend_otpData_resend_otp);
          break;
      }
    }

    return result.build();
  }
}

class _$Gresend_otpData_resend_otpSerializer
    implements StructuredSerializer<Gresend_otpData_resend_otp> {
  @override
  final Iterable<Type> types = const [
    Gresend_otpData_resend_otp,
    _$Gresend_otpData_resend_otp
  ];
  @override
  final String wireName = 'Gresend_otpData_resend_otp';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gresend_otpData_resend_otp object,
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
  Gresend_otpData_resend_otp deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gresend_otpData_resend_otpBuilder();

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

class _$Gresend_otpData extends Gresend_otpData {
  @override
  final String G__typename;
  @override
  final Gresend_otpData_resend_otp resend_otp;

  factory _$Gresend_otpData([void Function(Gresend_otpDataBuilder)? updates]) =>
      (new Gresend_otpDataBuilder()..update(updates))._build();

  _$Gresend_otpData._({required this.G__typename, required this.resend_otp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gresend_otpData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        resend_otp, r'Gresend_otpData', 'resend_otp');
  }

  @override
  Gresend_otpData rebuild(void Function(Gresend_otpDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gresend_otpDataBuilder toBuilder() =>
      new Gresend_otpDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gresend_otpData &&
        G__typename == other.G__typename &&
        resend_otp == other.resend_otp;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), resend_otp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gresend_otpData')
          ..add('G__typename', G__typename)
          ..add('resend_otp', resend_otp))
        .toString();
  }
}

class Gresend_otpDataBuilder
    implements Builder<Gresend_otpData, Gresend_otpDataBuilder> {
  _$Gresend_otpData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gresend_otpData_resend_otpBuilder? _resend_otp;
  Gresend_otpData_resend_otpBuilder get resend_otp =>
      _$this._resend_otp ??= new Gresend_otpData_resend_otpBuilder();
  set resend_otp(Gresend_otpData_resend_otpBuilder? resend_otp) =>
      _$this._resend_otp = resend_otp;

  Gresend_otpDataBuilder() {
    Gresend_otpData._initializeBuilder(this);
  }

  Gresend_otpDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _resend_otp = $v.resend_otp.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gresend_otpData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gresend_otpData;
  }

  @override
  void update(void Function(Gresend_otpDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gresend_otpData build() => _build();

  _$Gresend_otpData _build() {
    _$Gresend_otpData _$result;
    try {
      _$result = _$v ??
          new _$Gresend_otpData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gresend_otpData', 'G__typename'),
              resend_otp: resend_otp.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resend_otp';
        resend_otp.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gresend_otpData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gresend_otpData_resend_otp extends Gresend_otpData_resend_otp {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool ok;
  @override
  final String? token;

  factory _$Gresend_otpData_resend_otp(
          [void Function(Gresend_otpData_resend_otpBuilder)? updates]) =>
      (new Gresend_otpData_resend_otpBuilder()..update(updates))._build();

  _$Gresend_otpData_resend_otp._(
      {required this.G__typename,
      required this.message,
      required this.ok,
      this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gresend_otpData_resend_otp', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'Gresend_otpData_resend_otp', 'message');
    BuiltValueNullFieldError.checkNotNull(
        ok, r'Gresend_otpData_resend_otp', 'ok');
  }

  @override
  Gresend_otpData_resend_otp rebuild(
          void Function(Gresend_otpData_resend_otpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gresend_otpData_resend_otpBuilder toBuilder() =>
      new Gresend_otpData_resend_otpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gresend_otpData_resend_otp &&
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
    return (newBuiltValueToStringHelper(r'Gresend_otpData_resend_otp')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('ok', ok)
          ..add('token', token))
        .toString();
  }
}

class Gresend_otpData_resend_otpBuilder
    implements
        Builder<Gresend_otpData_resend_otp, Gresend_otpData_resend_otpBuilder> {
  _$Gresend_otpData_resend_otp? _$v;

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

  Gresend_otpData_resend_otpBuilder() {
    Gresend_otpData_resend_otp._initializeBuilder(this);
  }

  Gresend_otpData_resend_otpBuilder get _$this {
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
  void replace(Gresend_otpData_resend_otp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gresend_otpData_resend_otp;
  }

  @override
  void update(void Function(Gresend_otpData_resend_otpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gresend_otpData_resend_otp build() => _build();

  _$Gresend_otpData_resend_otp _build() {
    final _$result = _$v ??
        new _$Gresend_otpData_resend_otp._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gresend_otpData_resend_otp', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'Gresend_otpData_resend_otp', 'message'),
            ok: BuiltValueNullFieldError.checkNotNull(
                ok, r'Gresend_otpData_resend_otp', 'ok'),
            token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
