// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'add_interest.var.gql.g.dart';

abstract class Gadd_interestVars
    implements Built<Gadd_interestVars, Gadd_interestVarsBuilder> {
  Gadd_interestVars._();

  factory Gadd_interestVars([Function(Gadd_interestVarsBuilder b) updates]) =
      _$Gadd_interestVars;

  BuiltList<int> get interest;
  static Serializer<Gadd_interestVars> get serializer =>
      _$gaddInterestVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gadd_interestVars.serializer, this)
          as Map<String, dynamic>);
  static Gadd_interestVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gadd_interestVars.serializer, json);
}
