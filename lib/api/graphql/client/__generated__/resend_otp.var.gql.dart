// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'resend_otp.var.gql.g.dart';

abstract class Gresend_otpVars
    implements Built<Gresend_otpVars, Gresend_otpVarsBuilder> {
  Gresend_otpVars._();

  factory Gresend_otpVars([Function(Gresend_otpVarsBuilder b) updates]) =
      _$Gresend_otpVars;

  static Serializer<Gresend_otpVars> get serializer =>
      _$gresendOtpVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gresend_otpVars.serializer, this)
          as Map<String, dynamic>);
  static Gresend_otpVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gresend_otpVars.serializer, json);
}
