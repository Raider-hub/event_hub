// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'verify_otp.data.gql.g.dart';

abstract class Gverify_otpData
    implements Built<Gverify_otpData, Gverify_otpDataBuilder> {
  Gverify_otpData._();

  factory Gverify_otpData([Function(Gverify_otpDataBuilder b) updates]) =
      _$Gverify_otpData;

  static void _initializeBuilder(Gverify_otpDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gverify_otpData_verify_otp get verify_otp;
  static Serializer<Gverify_otpData> get serializer =>
      _$gverifyOtpDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gverify_otpData.serializer, this)
          as Map<String, dynamic>);
  static Gverify_otpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gverify_otpData.serializer, json);
}

abstract class Gverify_otpData_verify_otp
    implements
        Built<Gverify_otpData_verify_otp, Gverify_otpData_verify_otpBuilder> {
  Gverify_otpData_verify_otp._();

  factory Gverify_otpData_verify_otp(
          [Function(Gverify_otpData_verify_otpBuilder b) updates]) =
      _$Gverify_otpData_verify_otp;

  static void _initializeBuilder(Gverify_otpData_verify_otpBuilder b) =>
      b..G__typename = 'SignPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get ok;
  String? get token;
  static Serializer<Gverify_otpData_verify_otp> get serializer =>
      _$gverifyOtpDataVerifyOtpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      Gverify_otpData_verify_otp.serializer, this) as Map<String, dynamic>);
  static Gverify_otpData_verify_otp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(Gverify_otpData_verify_otp.serializer, json);
}
