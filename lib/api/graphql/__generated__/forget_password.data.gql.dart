// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'forget_password.data.gql.g.dart';

abstract class Gforgot_passwordData
    implements Built<Gforgot_passwordData, Gforgot_passwordDataBuilder> {
  Gforgot_passwordData._();

  factory Gforgot_passwordData(
          [Function(Gforgot_passwordDataBuilder b) updates]) =
      _$Gforgot_passwordData;

  static void _initializeBuilder(Gforgot_passwordDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gforgot_passwordData_forgot_password get forgot_password;
  static Serializer<Gforgot_passwordData> get serializer =>
      _$gforgotPasswordDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gforgot_passwordData.serializer, this)
          as Map<String, dynamic>);
  static Gforgot_passwordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gforgot_passwordData.serializer, json);
}

abstract class Gforgot_passwordData_forgot_password
    implements
        Built<Gforgot_passwordData_forgot_password,
            Gforgot_passwordData_forgot_passwordBuilder> {
  Gforgot_passwordData_forgot_password._();

  factory Gforgot_passwordData_forgot_password(
          [Function(Gforgot_passwordData_forgot_passwordBuilder b) updates]) =
      _$Gforgot_passwordData_forgot_password;

  static void _initializeBuilder(
          Gforgot_passwordData_forgot_passwordBuilder b) =>
      b..G__typename = 'SignPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  String? get token;
  bool get ok;
  static Serializer<Gforgot_passwordData_forgot_password> get serializer =>
      _$gforgotPasswordDataForgotPasswordSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(Gforgot_passwordData_forgot_password.serializer, this)
      as Map<String, dynamic>);
  static Gforgot_passwordData_forgot_password? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          Gforgot_passwordData_forgot_password.serializer, json);
}
