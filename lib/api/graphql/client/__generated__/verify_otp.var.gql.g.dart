// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gverify_otpVars> _$gverifyOtpVarsSerializer =
    new _$Gverify_otpVarsSerializer();

class _$Gverify_otpVarsSerializer
    implements StructuredSerializer<Gverify_otpVars> {
  @override
  final Iterable<Type> types = const [Gverify_otpVars, _$Gverify_otpVars];
  @override
  final String wireName = 'Gverify_otpVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gverify_otpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'otp',
      serializers.serialize(object.otp, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gverify_otpVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gverify_otpVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'otp':
          result.otp = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_otpVars extends Gverify_otpVars {
  @override
  final String otp;

  factory _$Gverify_otpVars([void Function(Gverify_otpVarsBuilder)? updates]) =>
      (new Gverify_otpVarsBuilder()..update(updates))._build();

  _$Gverify_otpVars._({required this.otp}) : super._() {
    BuiltValueNullFieldError.checkNotNull(otp, r'Gverify_otpVars', 'otp');
  }

  @override
  Gverify_otpVars rebuild(void Function(Gverify_otpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_otpVarsBuilder toBuilder() =>
      new Gverify_otpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gverify_otpVars && otp == other.otp;
  }

  @override
  int get hashCode {
    return $jf($jc(0, otp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gverify_otpVars')..add('otp', otp))
        .toString();
  }
}

class Gverify_otpVarsBuilder
    implements Builder<Gverify_otpVars, Gverify_otpVarsBuilder> {
  _$Gverify_otpVars? _$v;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  Gverify_otpVarsBuilder();

  Gverify_otpVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gverify_otpVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_otpVars;
  }

  @override
  void update(void Function(Gverify_otpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_otpVars build() => _build();

  _$Gverify_otpVars _build() {
    final _$result = _$v ??
        new _$Gverify_otpVars._(
            otp: BuiltValueNullFieldError.checkNotNull(
                otp, r'Gverify_otpVars', 'otp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
