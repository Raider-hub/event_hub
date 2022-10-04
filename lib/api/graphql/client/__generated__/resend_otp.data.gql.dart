// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'resend_otp.data.gql.g.dart';

abstract class Gresend_otpData
    implements Built<Gresend_otpData, Gresend_otpDataBuilder> {
  Gresend_otpData._();

  factory Gresend_otpData([Function(Gresend_otpDataBuilder b) updates]) =
      _$Gresend_otpData;

  static void _initializeBuilder(Gresend_otpDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gresend_otpData_resend_otp get resend_otp;
  static Serializer<Gresend_otpData> get serializer =>
      _$gresendOtpDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gresend_otpData.serializer, this)
          as Map<String, dynamic>);
  static Gresend_otpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gresend_otpData.serializer, json);
}

abstract class Gresend_otpData_resend_otp
    implements
        Built<Gresend_otpData_resend_otp, Gresend_otpData_resend_otpBuilder> {
  Gresend_otpData_resend_otp._();

  factory Gresend_otpData_resend_otp(
          [Function(Gresend_otpData_resend_otpBuilder b) updates]) =
      _$Gresend_otpData_resend_otp;

  static void _initializeBuilder(Gresend_otpData_resend_otpBuilder b) =>
      b..G__typename = 'SignPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get ok;
  String? get token;
  static Serializer<Gresend_otpData_resend_otp> get serializer =>
      _$gresendOtpDataResendOtpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      Gresend_otpData_resend_otp.serializer, this) as Map<String, dynamic>);
  static Gresend_otpData_resend_otp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(Gresend_otpData_resend_otp.serializer, json);
}
