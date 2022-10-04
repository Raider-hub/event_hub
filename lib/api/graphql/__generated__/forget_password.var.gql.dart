// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'forget_password.var.gql.g.dart';

abstract class Gforgot_passwordVars
    implements Built<Gforgot_passwordVars, Gforgot_passwordVarsBuilder> {
  Gforgot_passwordVars._();

  factory Gforgot_passwordVars(
          [Function(Gforgot_passwordVarsBuilder b) updates]) =
      _$Gforgot_passwordVars;

  String get email;
  static Serializer<Gforgot_passwordVars> get serializer =>
      _$gforgotPasswordVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gforgot_passwordVars.serializer, this)
          as Map<String, dynamic>);
  static Gforgot_passwordVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gforgot_passwordVars.serializer, json);
}
