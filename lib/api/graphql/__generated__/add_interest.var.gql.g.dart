// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_interest.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_interestVars> _$gaddInterestVarsSerializer =
    new _$Gadd_interestVarsSerializer();

class _$Gadd_interestVarsSerializer
    implements StructuredSerializer<Gadd_interestVars> {
  @override
  final Iterable<Type> types = const [Gadd_interestVars, _$Gadd_interestVars];
  @override
  final String wireName = 'Gadd_interestVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_interestVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'interest',
      serializers.serialize(object.interest,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];

    return result;
  }

  @override
  Gadd_interestVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_interestVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'interest':
          result.interest.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_interestVars extends Gadd_interestVars {
  @override
  final BuiltList<int> interest;

  factory _$Gadd_interestVars(
          [void Function(Gadd_interestVarsBuilder)? updates]) =>
      (new Gadd_interestVarsBuilder()..update(updates))._build();

  _$Gadd_interestVars._({required this.interest}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        interest, r'Gadd_interestVars', 'interest');
  }

  @override
  Gadd_interestVars rebuild(void Function(Gadd_interestVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_interestVarsBuilder toBuilder() =>
      new Gadd_interestVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_interestVars && interest == other.interest;
  }

  @override
  int get hashCode {
    return $jf($jc(0, interest.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_interestVars')
          ..add('interest', interest))
        .toString();
  }
}

class Gadd_interestVarsBuilder
    implements Builder<Gadd_interestVars, Gadd_interestVarsBuilder> {
  _$Gadd_interestVars? _$v;

  ListBuilder<int>? _interest;
  ListBuilder<int> get interest => _$this._interest ??= new ListBuilder<int>();
  set interest(ListBuilder<int>? interest) => _$this._interest = interest;

  Gadd_interestVarsBuilder();

  Gadd_interestVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interest = $v.interest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_interestVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_interestVars;
  }

  @override
  void update(void Function(Gadd_interestVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_interestVars build() => _build();

  _$Gadd_interestVars _build() {
    _$Gadd_interestVars _$result;
    try {
      _$result = _$v ?? new _$Gadd_interestVars._(interest: interest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interest';
        interest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_interestVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
