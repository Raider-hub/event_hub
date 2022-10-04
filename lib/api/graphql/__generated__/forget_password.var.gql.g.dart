// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gforgot_passwordVars> _$gforgotPasswordVarsSerializer =
    new _$Gforgot_passwordVarsSerializer();

class _$Gforgot_passwordVarsSerializer
    implements StructuredSerializer<Gforgot_passwordVars> {
  @override
  final Iterable<Type> types = const [
    Gforgot_passwordVars,
    _$Gforgot_passwordVars
  ];
  @override
  final String wireName = 'Gforgot_passwordVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gforgot_passwordVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gforgot_passwordVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gforgot_passwordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gforgot_passwordVars extends Gforgot_passwordVars {
  @override
  final String email;

  factory _$Gforgot_passwordVars(
          [void Function(Gforgot_passwordVarsBuilder)? updates]) =>
      (new Gforgot_passwordVarsBuilder()..update(updates))._build();

  _$Gforgot_passwordVars._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'Gforgot_passwordVars', 'email');
  }

  @override
  Gforgot_passwordVars rebuild(
          void Function(Gforgot_passwordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gforgot_passwordVarsBuilder toBuilder() =>
      new Gforgot_passwordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gforgot_passwordVars && email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(0, email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gforgot_passwordVars')
          ..add('email', email))
        .toString();
  }
}

class Gforgot_passwordVarsBuilder
    implements Builder<Gforgot_passwordVars, Gforgot_passwordVarsBuilder> {
  _$Gforgot_passwordVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  Gforgot_passwordVarsBuilder();

  Gforgot_passwordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gforgot_passwordVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gforgot_passwordVars;
  }

  @override
  void update(void Function(Gforgot_passwordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gforgot_passwordVars build() => _build();

  _$Gforgot_passwordVars _build() {
    final _$result = _$v ??
        new _$Gforgot_passwordVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'Gforgot_passwordVars', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
