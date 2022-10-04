// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'verify_otp.var.gql.g.dart';

abstract class Gverify_otpVars
    implements Built<Gverify_otpVars, Gverify_otpVarsBuilder> {
  Gverify_otpVars._();

  factory Gverify_otpVars([Function(Gverify_otpVarsBuilder b) updates]) =
      _$Gverify_otpVars;

  String get otp;
  static Serializer<Gverify_otpVars> get serializer =>
      _$gverifyOtpVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gverify_otpVars.serializer, this)
          as Map<String, dynamic>);
  static Gverify_otpVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gverify_otpVars.serializer, json);
}
