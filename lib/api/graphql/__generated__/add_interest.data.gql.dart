// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'add_interest.data.gql.g.dart';

abstract class Gadd_interestData
    implements Built<Gadd_interestData, Gadd_interestDataBuilder> {
  Gadd_interestData._();

  factory Gadd_interestData([Function(Gadd_interestDataBuilder b) updates]) =
      _$Gadd_interestData;

  static void _initializeBuilder(Gadd_interestDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gadd_interestData_add_interest> get add_interest;
  static Serializer<Gadd_interestData> get serializer =>
      _$gaddInterestDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gadd_interestData.serializer, this)
          as Map<String, dynamic>);
  static Gadd_interestData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gadd_interestData.serializer, json);
}

abstract class Gadd_interestData_add_interest
    implements
        Built<Gadd_interestData_add_interest,
            Gadd_interestData_add_interestBuilder> {
  Gadd_interestData_add_interest._();

  factory Gadd_interestData_add_interest(
          [Function(Gadd_interestData_add_interestBuilder b) updates]) =
      _$Gadd_interestData_add_interest;

  static void _initializeBuilder(Gadd_interestData_add_interestBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  BuiltList<Gadd_interestData_add_interest_members> get members;
  static Serializer<Gadd_interestData_add_interest> get serializer =>
      _$gaddInterestDataAddInterestSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      Gadd_interestData_add_interest.serializer, this) as Map<String, dynamic>);
  static Gadd_interestData_add_interest? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(Gadd_interestData_add_interest.serializer, json);
}

abstract class Gadd_interestData_add_interest_members
    implements
        Built<Gadd_interestData_add_interest_members,
            Gadd_interestData_add_interest_membersBuilder> {
  Gadd_interestData_add_interest_members._();

  factory Gadd_interestData_add_interest_members(
          [Function(Gadd_interestData_add_interest_membersBuilder b) updates]) =
      _$Gadd_interestData_add_interest_members;

  static void _initializeBuilder(
          Gadd_interestData_add_interest_membersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<Gadd_interestData_add_interest_members> get serializer =>
      _$gaddInterestDataAddInterestMembersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          Gadd_interestData_add_interest_members.serializer, this)
      as Map<String, dynamic>);
  static Gadd_interestData_add_interest_members? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          Gadd_interestData_add_interest_members.serializer, json);
}
