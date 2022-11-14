// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

abstract class GILocation implements Built<GILocation, GILocationBuilder> {
  GILocation._();

  factory GILocation([Function(GILocationBuilder b) updates]) = _$GILocation;

  String get latitude;
  String get longitude;
  static Serializer<GILocation> get serializer => _$gILocationSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GILocation.serializer, this)
          as Map<String, dynamic>);
  static GILocation? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GILocation.serializer, json);
}

abstract class GUpload implements Built<GUpload, GUploadBuilder> {
  GUpload._();

  factory GUpload([String? value]) =>
      _$GUpload((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GUpload> get serializer =>
      _i2.DefaultScalarSerializer<GUpload>(
          (Object serialized) => GUpload((serialized as String?)));
}

const possibleTypesMap = {};
