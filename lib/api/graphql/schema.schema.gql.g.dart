// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUserInput> _$gCreateUserInputSerializer =
    new _$GCreateUserInputSerializer();
Serializer<GEventCreateInput> _$gEventCreateInputSerializer =
    new _$GEventCreateInputSerializer();
Serializer<GEventUpdateInput> _$gEventUpdateInputSerializer =
    new _$GEventUpdateInputSerializer();
Serializer<GLoginInput> _$gLoginInputSerializer = new _$GLoginInputSerializer();
Serializer<GReviewInput> _$gReviewInputSerializer =
    new _$GReviewInputSerializer();
Serializer<GUpdateUserInput> _$gUpdateUserInputSerializer =
    new _$GUpdateUserInputSerializer();

class _$GCreateUserInputSerializer
    implements StructuredSerializer<GCreateUserInput> {
  @override
  final Iterable<Type> types = const [GCreateUserInput, _$GCreateUserInput];
  @override
  final String wireName = 'GCreateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fullname;
    if (value != null) {
      result
        ..add('fullname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GEventCreateInputSerializer
    implements StructuredSerializer<GEventCreateInput> {
  @override
  final Iterable<Type> types = const [GEventCreateInput, _$GEventCreateInput];
  @override
  final String wireName = 'GEventCreateInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GEventCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  GEventCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEventCreateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GEventUpdateInputSerializer
    implements StructuredSerializer<GEventUpdateInput> {
  @override
  final Iterable<Type> types = const [GEventUpdateInput, _$GEventUpdateInput];
  @override
  final String wireName = 'GEventUpdateInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GEventUpdateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'eventId',
      serializers.serialize(object.eventId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.members;
    if (value != null) {
      result
        ..add('members')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  GEventUpdateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEventUpdateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'eventId':
          result.eventId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'members':
          result.members.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginInputSerializer implements StructuredSerializer<GLoginInput> {
  @override
  final Iterable<Type> types = const [GLoginInput, _$GLoginInput];
  @override
  final String wireName = 'GLoginInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginInputBuilder();

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
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewInputSerializer implements StructuredSerializer<GReviewInput> {
  @override
  final Iterable<Type> types = const [GReviewInput, _$GReviewInput];
  @override
  final String wireName = 'GReviewInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReviewInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.reting;
    if (value != null) {
      result
        ..add('reting')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GReviewInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reting':
          result.reting = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserInputSerializer
    implements StructuredSerializer<GUpdateUserInput> {
  @override
  final Iterable<Type> types = const [GUpdateUserInput, _$GUpdateUserInput];
  @override
  final String wireName = 'GUpdateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fullname;
    if (value != null) {
      result
        ..add('fullname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date_of_birth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_of_birth':
          result.date_of_birth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserInput extends GCreateUserInput {
  @override
  final String? fullname;
  @override
  final String? email;
  @override
  final String? password;

  factory _$GCreateUserInput(
          [void Function(GCreateUserInputBuilder)? updates]) =>
      (new GCreateUserInputBuilder()..update(updates))._build();

  _$GCreateUserInput._({this.fullname, this.email, this.password}) : super._();

  @override
  GCreateUserInput rebuild(void Function(GCreateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserInputBuilder toBuilder() =>
      new GCreateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserInput &&
        fullname == other.fullname &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, fullname.hashCode), email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserInput')
          ..add('fullname', fullname)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GCreateUserInputBuilder
    implements Builder<GCreateUserInput, GCreateUserInputBuilder> {
  _$GCreateUserInput? _$v;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GCreateUserInputBuilder();

  GCreateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullname = $v.fullname;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserInput;
  }

  @override
  void update(void Function(GCreateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserInput build() => _build();

  _$GCreateUserInput _build() {
    final _$result = _$v ??
        new _$GCreateUserInput._(
            fullname: fullname, email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$GEventCreateInput extends GEventCreateInput {
  @override
  final String title;
  @override
  final String description;
  @override
  final String date;
  @override
  final String time;
  @override
  final String location;
  @override
  final BuiltList<String>? category;

  factory _$GEventCreateInput(
          [void Function(GEventCreateInputBuilder)? updates]) =>
      (new GEventCreateInputBuilder()..update(updates))._build();

  _$GEventCreateInput._(
      {required this.title,
      required this.description,
      required this.date,
      required this.time,
      required this.location,
      this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'GEventCreateInput', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GEventCreateInput', 'description');
    BuiltValueNullFieldError.checkNotNull(date, r'GEventCreateInput', 'date');
    BuiltValueNullFieldError.checkNotNull(time, r'GEventCreateInput', 'time');
    BuiltValueNullFieldError.checkNotNull(
        location, r'GEventCreateInput', 'location');
  }

  @override
  GEventCreateInput rebuild(void Function(GEventCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEventCreateInputBuilder toBuilder() =>
      new GEventCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEventCreateInput &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        time == other.time &&
        location == other.location &&
        category == other.category;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), description.hashCode),
                    date.hashCode),
                time.hashCode),
            location.hashCode),
        category.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GEventCreateInput')
          ..add('title', title)
          ..add('description', description)
          ..add('date', date)
          ..add('time', time)
          ..add('location', location)
          ..add('category', category))
        .toString();
  }
}

class GEventCreateInputBuilder
    implements Builder<GEventCreateInput, GEventCreateInputBuilder> {
  _$GEventCreateInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  ListBuilder<String>? _category;
  ListBuilder<String> get category =>
      _$this._category ??= new ListBuilder<String>();
  set category(ListBuilder<String>? category) => _$this._category = category;

  GEventCreateInputBuilder();

  GEventCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _date = $v.date;
      _time = $v.time;
      _location = $v.location;
      _category = $v.category?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEventCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEventCreateInput;
  }

  @override
  void update(void Function(GEventCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEventCreateInput build() => _build();

  _$GEventCreateInput _build() {
    _$GEventCreateInput _$result;
    try {
      _$result = _$v ??
          new _$GEventCreateInput._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GEventCreateInput', 'title'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GEventCreateInput', 'description'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'GEventCreateInput', 'date'),
              time: BuiltValueNullFieldError.checkNotNull(
                  time, r'GEventCreateInput', 'time'),
              location: BuiltValueNullFieldError.checkNotNull(
                  location, r'GEventCreateInput', 'location'),
              category: _category?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GEventCreateInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GEventUpdateInput extends GEventUpdateInput {
  @override
  final int eventId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final String? location;
  @override
  final BuiltList<String>? category;
  @override
  final BuiltList<int>? members;

  factory _$GEventUpdateInput(
          [void Function(GEventUpdateInputBuilder)? updates]) =>
      (new GEventUpdateInputBuilder()..update(updates))._build();

  _$GEventUpdateInput._(
      {required this.eventId,
      this.title,
      this.description,
      this.date,
      this.time,
      this.location,
      this.category,
      this.members})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        eventId, r'GEventUpdateInput', 'eventId');
  }

  @override
  GEventUpdateInput rebuild(void Function(GEventUpdateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEventUpdateInputBuilder toBuilder() =>
      new GEventUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEventUpdateInput &&
        eventId == other.eventId &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        time == other.time &&
        location == other.location &&
        category == other.category &&
        members == other.members;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, eventId.hashCode), title.hashCode),
                            description.hashCode),
                        date.hashCode),
                    time.hashCode),
                location.hashCode),
            category.hashCode),
        members.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GEventUpdateInput')
          ..add('eventId', eventId)
          ..add('title', title)
          ..add('description', description)
          ..add('date', date)
          ..add('time', time)
          ..add('location', location)
          ..add('category', category)
          ..add('members', members))
        .toString();
  }
}

class GEventUpdateInputBuilder
    implements Builder<GEventUpdateInput, GEventUpdateInputBuilder> {
  _$GEventUpdateInput? _$v;

  int? _eventId;
  int? get eventId => _$this._eventId;
  set eventId(int? eventId) => _$this._eventId = eventId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  ListBuilder<String>? _category;
  ListBuilder<String> get category =>
      _$this._category ??= new ListBuilder<String>();
  set category(ListBuilder<String>? category) => _$this._category = category;

  ListBuilder<int>? _members;
  ListBuilder<int> get members => _$this._members ??= new ListBuilder<int>();
  set members(ListBuilder<int>? members) => _$this._members = members;

  GEventUpdateInputBuilder();

  GEventUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _title = $v.title;
      _description = $v.description;
      _date = $v.date;
      _time = $v.time;
      _location = $v.location;
      _category = $v.category?.toBuilder();
      _members = $v.members?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEventUpdateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEventUpdateInput;
  }

  @override
  void update(void Function(GEventUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEventUpdateInput build() => _build();

  _$GEventUpdateInput _build() {
    _$GEventUpdateInput _$result;
    try {
      _$result = _$v ??
          new _$GEventUpdateInput._(
              eventId: BuiltValueNullFieldError.checkNotNull(
                  eventId, r'GEventUpdateInput', 'eventId'),
              title: title,
              description: description,
              date: date,
              time: time,
              location: location,
              category: _category?.build(),
              members: _members?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GEventUpdateInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginInput extends GLoginInput {
  @override
  final String email;
  @override
  final String password;

  factory _$GLoginInput([void Function(GLoginInputBuilder)? updates]) =>
      (new GLoginInputBuilder()..update(updates))._build();

  _$GLoginInput._({required this.email, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GLoginInput', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'GLoginInput', 'password');
  }

  @override
  GLoginInput rebuild(void Function(GLoginInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginInputBuilder toBuilder() => new GLoginInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginInput &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginInput')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GLoginInputBuilder implements Builder<GLoginInput, GLoginInputBuilder> {
  _$GLoginInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GLoginInputBuilder();

  GLoginInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginInput;
  }

  @override
  void update(void Function(GLoginInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginInput build() => _build();

  _$GLoginInput _build() {
    final _$result = _$v ??
        new _$GLoginInput._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GLoginInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GLoginInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GReviewInput extends GReviewInput {
  @override
  final String text;
  @override
  final int? reting;

  factory _$GReviewInput([void Function(GReviewInputBuilder)? updates]) =>
      (new GReviewInputBuilder()..update(updates))._build();

  _$GReviewInput._({required this.text, this.reting}) : super._() {
    BuiltValueNullFieldError.checkNotNull(text, r'GReviewInput', 'text');
  }

  @override
  GReviewInput rebuild(void Function(GReviewInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewInputBuilder toBuilder() => new GReviewInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewInput &&
        text == other.text &&
        reting == other.reting;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), reting.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewInput')
          ..add('text', text)
          ..add('reting', reting))
        .toString();
  }
}

class GReviewInputBuilder
    implements Builder<GReviewInput, GReviewInputBuilder> {
  _$GReviewInput? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  int? _reting;
  int? get reting => _$this._reting;
  set reting(int? reting) => _$this._reting = reting;

  GReviewInputBuilder();

  GReviewInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _reting = $v.reting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewInput;
  }

  @override
  void update(void Function(GReviewInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewInput build() => _build();

  _$GReviewInput _build() {
    final _$result = _$v ??
        new _$GReviewInput._(
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'GReviewInput', 'text'),
            reting: reting);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserInput extends GUpdateUserInput {
  @override
  final String? fullname;
  @override
  final String? date_of_birth;
  @override
  final String? location;
  @override
  final String? about;

  factory _$GUpdateUserInput(
          [void Function(GUpdateUserInputBuilder)? updates]) =>
      (new GUpdateUserInputBuilder()..update(updates))._build();

  _$GUpdateUserInput._(
      {this.fullname, this.date_of_birth, this.location, this.about})
      : super._();

  @override
  GUpdateUserInput rebuild(void Function(GUpdateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserInputBuilder toBuilder() =>
      new GUpdateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserInput &&
        fullname == other.fullname &&
        date_of_birth == other.date_of_birth &&
        location == other.location &&
        about == other.about;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, fullname.hashCode), date_of_birth.hashCode),
            location.hashCode),
        about.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserInput')
          ..add('fullname', fullname)
          ..add('date_of_birth', date_of_birth)
          ..add('location', location)
          ..add('about', about))
        .toString();
  }
}

class GUpdateUserInputBuilder
    implements Builder<GUpdateUserInput, GUpdateUserInputBuilder> {
  _$GUpdateUserInput? _$v;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _date_of_birth;
  String? get date_of_birth => _$this._date_of_birth;
  set date_of_birth(String? date_of_birth) =>
      _$this._date_of_birth = date_of_birth;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  GUpdateUserInputBuilder();

  GUpdateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullname = $v.fullname;
      _date_of_birth = $v.date_of_birth;
      _location = $v.location;
      _about = $v.about;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserInput;
  }

  @override
  void update(void Function(GUpdateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserInput build() => _build();

  _$GUpdateUserInput _build() {
    final _$result = _$v ??
        new _$GUpdateUserInput._(
            fullname: fullname,
            date_of_birth: date_of_birth,
            location: location,
            about: about);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
