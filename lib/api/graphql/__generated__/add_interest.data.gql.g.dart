// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_interest.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_interestData> _$gaddInterestDataSerializer =
    new _$Gadd_interestDataSerializer();
Serializer<Gadd_interestData_add_interest>
    _$gaddInterestDataAddInterestSerializer =
    new _$Gadd_interestData_add_interestSerializer();
Serializer<Gadd_interestData_add_interest_members>
    _$gaddInterestDataAddInterestMembersSerializer =
    new _$Gadd_interestData_add_interest_membersSerializer();

class _$Gadd_interestDataSerializer
    implements StructuredSerializer<Gadd_interestData> {
  @override
  final Iterable<Type> types = const [Gadd_interestData, _$Gadd_interestData];
  @override
  final String wireName = 'Gadd_interestData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_interestData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'add_interest',
      serializers.serialize(object.add_interest,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gadd_interestData_add_interest)])),
    ];

    return result;
  }

  @override
  Gadd_interestData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_interestDataBuilder();

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
        case 'add_interest':
          result.add_interest.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gadd_interestData_add_interest)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_interestData_add_interestSerializer
    implements StructuredSerializer<Gadd_interestData_add_interest> {
  @override
  final Iterable<Type> types = const [
    Gadd_interestData_add_interest,
    _$Gadd_interestData_add_interest
  ];
  @override
  final String wireName = 'Gadd_interestData_add_interest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_interestData_add_interest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'members',
      serializers.serialize(object.members,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gadd_interestData_add_interest_members)])),
    ];

    return result;
  }

  @override
  Gadd_interestData_add_interest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_interestData_add_interestBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'members':
          result.members.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gadd_interestData_add_interest_members)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_interestData_add_interest_membersSerializer
    implements StructuredSerializer<Gadd_interestData_add_interest_members> {
  @override
  final Iterable<Type> types = const [
    Gadd_interestData_add_interest_members,
    _$Gadd_interestData_add_interest_members
  ];
  @override
  final String wireName = 'Gadd_interestData_add_interest_members';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_interestData_add_interest_members object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gadd_interestData_add_interest_members deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_interestData_add_interest_membersBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_interestData extends Gadd_interestData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gadd_interestData_add_interest> add_interest;

  factory _$Gadd_interestData(
          [void Function(Gadd_interestDataBuilder)? updates]) =>
      (new Gadd_interestDataBuilder()..update(updates))._build();

  _$Gadd_interestData._({required this.G__typename, required this.add_interest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_interestData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        add_interest, r'Gadd_interestData', 'add_interest');
  }

  @override
  Gadd_interestData rebuild(void Function(Gadd_interestDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_interestDataBuilder toBuilder() =>
      new Gadd_interestDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_interestData &&
        G__typename == other.G__typename &&
        add_interest == other.add_interest;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), add_interest.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_interestData')
          ..add('G__typename', G__typename)
          ..add('add_interest', add_interest))
        .toString();
  }
}

class Gadd_interestDataBuilder
    implements Builder<Gadd_interestData, Gadd_interestDataBuilder> {
  _$Gadd_interestData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gadd_interestData_add_interest>? _add_interest;
  ListBuilder<Gadd_interestData_add_interest> get add_interest =>
      _$this._add_interest ??=
          new ListBuilder<Gadd_interestData_add_interest>();
  set add_interest(ListBuilder<Gadd_interestData_add_interest>? add_interest) =>
      _$this._add_interest = add_interest;

  Gadd_interestDataBuilder() {
    Gadd_interestData._initializeBuilder(this);
  }

  Gadd_interestDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _add_interest = $v.add_interest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_interestData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_interestData;
  }

  @override
  void update(void Function(Gadd_interestDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_interestData build() => _build();

  _$Gadd_interestData _build() {
    _$Gadd_interestData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_interestData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_interestData', 'G__typename'),
              add_interest: add_interest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'add_interest';
        add_interest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_interestData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_interestData_add_interest extends Gadd_interestData_add_interest {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final BuiltList<Gadd_interestData_add_interest_members> members;

  factory _$Gadd_interestData_add_interest(
          [void Function(Gadd_interestData_add_interestBuilder)? updates]) =>
      (new Gadd_interestData_add_interestBuilder()..update(updates))._build();

  _$Gadd_interestData_add_interest._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.members})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_interestData_add_interest', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gadd_interestData_add_interest', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gadd_interestData_add_interest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        members, r'Gadd_interestData_add_interest', 'members');
  }

  @override
  Gadd_interestData_add_interest rebuild(
          void Function(Gadd_interestData_add_interestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_interestData_add_interestBuilder toBuilder() =>
      new Gadd_interestData_add_interestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_interestData_add_interest &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        members == other.members;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
        members.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_interestData_add_interest')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('members', members))
        .toString();
  }
}

class Gadd_interestData_add_interestBuilder
    implements
        Builder<Gadd_interestData_add_interest,
            Gadd_interestData_add_interestBuilder> {
  _$Gadd_interestData_add_interest? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<Gadd_interestData_add_interest_members>? _members;
  ListBuilder<Gadd_interestData_add_interest_members> get members =>
      _$this._members ??=
          new ListBuilder<Gadd_interestData_add_interest_members>();
  set members(ListBuilder<Gadd_interestData_add_interest_members>? members) =>
      _$this._members = members;

  Gadd_interestData_add_interestBuilder() {
    Gadd_interestData_add_interest._initializeBuilder(this);
  }

  Gadd_interestData_add_interestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _members = $v.members.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_interestData_add_interest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_interestData_add_interest;
  }

  @override
  void update(void Function(Gadd_interestData_add_interestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_interestData_add_interest build() => _build();

  _$Gadd_interestData_add_interest _build() {
    _$Gadd_interestData_add_interest _$result;
    try {
      _$result = _$v ??
          new _$Gadd_interestData_add_interest._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gadd_interestData_add_interest', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gadd_interestData_add_interest', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Gadd_interestData_add_interest', 'name'),
              members: members.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_interestData_add_interest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_interestData_add_interest_members
    extends Gadd_interestData_add_interest_members {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$Gadd_interestData_add_interest_members(
          [void Function(Gadd_interestData_add_interest_membersBuilder)?
              updates]) =>
      (new Gadd_interestData_add_interest_membersBuilder()..update(updates))
          ._build();

  _$Gadd_interestData_add_interest_members._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_interestData_add_interest_members', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gadd_interestData_add_interest_members', 'id');
  }

  @override
  Gadd_interestData_add_interest_members rebuild(
          void Function(Gadd_interestData_add_interest_membersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_interestData_add_interest_membersBuilder toBuilder() =>
      new Gadd_interestData_add_interest_membersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_interestData_add_interest_members &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gadd_interestData_add_interest_members')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class Gadd_interestData_add_interest_membersBuilder
    implements
        Builder<Gadd_interestData_add_interest_members,
            Gadd_interestData_add_interest_membersBuilder> {
  _$Gadd_interestData_add_interest_members? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gadd_interestData_add_interest_membersBuilder() {
    Gadd_interestData_add_interest_members._initializeBuilder(this);
  }

  Gadd_interestData_add_interest_membersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_interestData_add_interest_members other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_interestData_add_interest_members;
  }

  @override
  void update(
      void Function(Gadd_interestData_add_interest_membersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_interestData_add_interest_members build() => _build();

  _$Gadd_interestData_add_interest_members _build() {
    final _$result = _$v ??
        new _$Gadd_interestData_add_interest_members._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_interestData_add_interest_members', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gadd_interestData_add_interest_members', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
