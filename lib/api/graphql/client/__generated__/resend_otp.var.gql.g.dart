// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_otp.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gresend_otpVars> _$gresendOtpVarsSerializer =
    new _$Gresend_otpVarsSerializer();

class _$Gresend_otpVarsSerializer
    implements StructuredSerializer<Gresend_otpVars> {
  @override
  final Iterable<Type> types = const [Gresend_otpVars, _$Gresend_otpVars];
  @override
  final String wireName = 'Gresend_otpVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gresend_otpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gresend_otpVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gresend_otpVarsBuilder().build();
  }
}

class _$Gresend_otpVars extends Gresend_otpVars {
  factory _$Gresend_otpVars([void Function(Gresend_otpVarsBuilder)? updates]) =>
      (new Gresend_otpVarsBuilder()..update(updates))._build();

  _$Gresend_otpVars._() : super._();

  @override
  Gresend_otpVars rebuild(void Function(Gresend_otpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gresend_otpVarsBuilder toBuilder() =>
      new Gresend_otpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gresend_otpVars;
  }

  @override
  int get hashCode {
    return 132173998;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gresend_otpVars').toString();
  }
}

class Gresend_otpVarsBuilder
    implements Builder<Gresend_otpVars, Gresend_otpVarsBuilder> {
  _$Gresend_otpVars? _$v;

  Gresend_otpVarsBuilder();

  @override
  void replace(Gresend_otpVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gresend_otpVars;
  }

  @override
  void update(void Function(Gresend_otpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gresend_otpVars build() => _build();

  _$Gresend_otpVars _build() {
    final _$result = _$v ?? new _$Gresend_otpVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
