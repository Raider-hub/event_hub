// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'verify_password_reset.data.gql.g.dart';

abstract class Gverify_password_resetData
    implements
        Built<Gverify_password_resetData, Gverify_password_resetDataBuilder> {
  Gverify_password_resetData._();

  factory Gverify_password_resetData(
          [Function(Gverify_password_resetDataBuilder b) updates]) =
      _$Gverify_password_resetData;

  static void _initializeBuilder(Gverify_password_resetDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gverify_password_resetData_verify_password_reset get verify_password_reset;
  static Serializer<Gverify_password_resetData> get serializer =>
      _$gverifyPasswordResetDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      Gverify_password_resetData.serializer, this) as Map<String, dynamic>);
  static Gverify_password_resetData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(Gverify_password_resetData.serializer, json);
}

abstract class Gverify_password_resetData_verify_password_reset
    implements
        Built<Gverify_password_resetData_verify_password_reset,
            Gverify_password_resetData_verify_password_resetBuilder> {
  Gverify_password_resetData_verify_password_reset._();

  factory Gverify_password_resetData_verify_password_reset(
      [Function(Gverify_password_resetData_verify_password_resetBuilder b)
          updates]) = _$Gverify_password_resetData_verify_password_reset;

  static void _initializeBuilder(
          Gverify_password_resetData_verify_password_resetBuilder b) =>
      b..G__typename = 'SignPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  String? get token;
  bool get ok;
  static Serializer<Gverify_password_resetData_verify_password_reset>
      get serializer => _$gverifyPasswordResetDataVerifyPasswordResetSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          Gverify_password_resetData_verify_password_reset.serializer, this)
      as Map<String, dynamic>);
  static Gverify_password_resetData_verify_password_reset? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          Gverify_password_resetData_verify_password_reset.serializer, json);
}
