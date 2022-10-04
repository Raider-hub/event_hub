// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'reset_password.data.gql.g.dart';

abstract class Greset_passwordData
    implements Built<Greset_passwordData, Greset_passwordDataBuilder> {
  Greset_passwordData._();

  factory Greset_passwordData(
      [Function(Greset_passwordDataBuilder b) updates]) = _$Greset_passwordData;

  static void _initializeBuilder(Greset_passwordDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Greset_passwordData_reset_password get reset_password;
  static Serializer<Greset_passwordData> get serializer =>
      _$gresetPasswordDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Greset_passwordData.serializer, this)
          as Map<String, dynamic>);
  static Greset_passwordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Greset_passwordData.serializer, json);
}

abstract class Greset_passwordData_reset_password
    implements
        Built<Greset_passwordData_reset_password,
            Greset_passwordData_reset_passwordBuilder> {
  Greset_passwordData_reset_password._();

  factory Greset_passwordData_reset_password(
          [Function(Greset_passwordData_reset_passwordBuilder b) updates]) =
      _$Greset_passwordData_reset_password;

  static void _initializeBuilder(Greset_passwordData_reset_passwordBuilder b) =>
      b..G__typename = 'SignPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  String? get token;
  bool get ok;
  static Serializer<Greset_passwordData_reset_password> get serializer =>
      _$gresetPasswordDataResetPasswordSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(Greset_passwordData_reset_password.serializer, this)
      as Map<String, dynamic>);
  static Greset_passwordData_reset_password? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(Greset_passwordData_reset_password.serializer, json);
}
