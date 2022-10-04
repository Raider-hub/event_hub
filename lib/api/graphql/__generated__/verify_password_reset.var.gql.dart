// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'verify_password_reset.var.gql.g.dart';

abstract class Gverify_password_resetVars
    implements
        Built<Gverify_password_resetVars, Gverify_password_resetVarsBuilder> {
  Gverify_password_resetVars._();

  factory Gverify_password_resetVars(
          [Function(Gverify_password_resetVarsBuilder b) updates]) =
      _$Gverify_password_resetVars;

  String get code;
  static Serializer<Gverify_password_resetVars> get serializer =>
      _$gverifyPasswordResetVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      Gverify_password_resetVars.serializer, this) as Map<String, dynamic>);
  static Gverify_password_resetVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(Gverify_password_resetVars.serializer, json);
}
