// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'reset_password.var.gql.g.dart';

abstract class Greset_passwordVars
    implements Built<Greset_passwordVars, Greset_passwordVarsBuilder> {
  Greset_passwordVars._();

  factory Greset_passwordVars(
      [Function(Greset_passwordVarsBuilder b) updates]) = _$Greset_passwordVars;

  String get newpassword;
  static Serializer<Greset_passwordVars> get serializer =>
      _$gresetPasswordVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Greset_passwordVars.serializer, this)
          as Map<String, dynamic>);
  static Greset_passwordVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Greset_passwordVars.serializer, json);
}
