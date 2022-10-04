// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'create_user.var.gql.g.dart';

abstract class Gcreate_userVars
    implements Built<Gcreate_userVars, Gcreate_userVarsBuilder> {
  Gcreate_userVars._();

  factory Gcreate_userVars([Function(Gcreate_userVarsBuilder b) updates]) =
      _$Gcreate_userVars;

  String get fullname;
  String get email;
  String get password;
  static Serializer<Gcreate_userVars> get serializer =>
      _$gcreateUserVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gcreate_userVars.serializer, this)
          as Map<String, dynamic>);
  static Gcreate_userVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gcreate_userVars.serializer, json);
}
