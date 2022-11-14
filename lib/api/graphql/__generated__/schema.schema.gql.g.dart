// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GILocation> _$gILocationSerializer = new _$GILocationSerializer();

class _$GILocationSerializer implements StructuredSerializer<GILocation> {
  @override
  final Iterable<Type> types = const [GILocation, _$GILocation];
  @override
  final String wireName = 'GILocation';

  @override
  Iterable<Object?> serialize(Serializers serializers, GILocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(String)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GILocation deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GILocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GILocation extends GILocation {
  @override
  final String latitude;
  @override
  final String longitude;

  factory _$GILocation([void Function(GILocationBuilder)? updates]) =>
      (new GILocationBuilder()..update(updates))._build();

  _$GILocation._({required this.latitude, required this.longitude})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(latitude, r'GILocation', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, r'GILocation', 'longitude');
  }

  @override
  GILocation rebuild(void Function(GILocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GILocationBuilder toBuilder() => new GILocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GILocation &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GILocation')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class GILocationBuilder implements Builder<GILocation, GILocationBuilder> {
  _$GILocation? _$v;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  GILocationBuilder();

  GILocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GILocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GILocation;
  }

  @override
  void update(void Function(GILocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GILocation build() => _build();

  _$GILocation _build() {
    final _$result = _$v ??
        new _$GILocation._(
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, r'GILocation', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, r'GILocation', 'longitude'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpload extends GUpload {
  @override
  final String value;

  factory _$GUpload([void Function(GUploadBuilder)? updates]) =>
      (new GUploadBuilder()..update(updates))._build();

  _$GUpload._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GUpload', 'value');
  }

  @override
  GUpload rebuild(void Function(GUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadBuilder toBuilder() => new GUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpload && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpload')..add('value', value))
        .toString();
  }
}

class GUploadBuilder implements Builder<GUpload, GUploadBuilder> {
  _$GUpload? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GUploadBuilder();

  GUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpload;
  }

  @override
  void update(void Function(GUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpload build() => _build();

  _$GUpload _build() {
    final _$result = _$v ??
        new _$GUpload._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GUpload', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
