// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_password_reset.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gverify_password_resetVars> _$gverifyPasswordResetVarsSerializer =
    new _$Gverify_password_resetVarsSerializer();

class _$Gverify_password_resetVarsSerializer
    implements StructuredSerializer<Gverify_password_resetVars> {
  @override
  final Iterable<Type> types = const [
    Gverify_password_resetVars,
    _$Gverify_password_resetVars
  ];
  @override
  final String wireName = 'Gverify_password_resetVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gverify_password_resetVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gverify_password_resetVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gverify_password_resetVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_password_resetVars extends Gverify_password_resetVars {
  @override
  final String code;

  factory _$Gverify_password_resetVars(
          [void Function(Gverify_password_resetVarsBuilder)? updates]) =>
      (new Gverify_password_resetVarsBuilder()..update(updates))._build();

  _$Gverify_password_resetVars._({required this.code}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gverify_password_resetVars', 'code');
  }

  @override
  Gverify_password_resetVars rebuild(
          void Function(Gverify_password_resetVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_password_resetVarsBuilder toBuilder() =>
      new Gverify_password_resetVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gverify_password_resetVars && code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc(0, code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gverify_password_resetVars')
          ..add('code', code))
        .toString();
  }
}

class Gverify_password_resetVarsBuilder
    implements
        Builder<Gverify_password_resetVars, Gverify_password_resetVarsBuilder> {
  _$Gverify_password_resetVars? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  Gverify_password_resetVarsBuilder();

  Gverify_password_resetVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gverify_password_resetVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_password_resetVars;
  }

  @override
  void update(void Function(Gverify_password_resetVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_password_resetVars build() => _build();

  _$Gverify_password_resetVars _build() {
    final _$result = _$v ??
        new _$Gverify_password_resetVars._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'Gverify_password_resetVars', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
