// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GCreateUserInput
    implements Built<GCreateUserInput, GCreateUserInputBuilder> {
  GCreateUserInput._();

  factory GCreateUserInput([Function(GCreateUserInputBuilder b) updates]) =
      _$GCreateUserInput;

  String? get fullname;
  String? get email;
  String? get password;
  static Serializer<GCreateUserInput> get serializer =>
      _$gCreateUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateUserInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateUserInput.serializer, json);
}

abstract class GEventCreateInput
    implements Built<GEventCreateInput, GEventCreateInputBuilder> {
  GEventCreateInput._();

  factory GEventCreateInput([Function(GEventCreateInputBuilder b) updates]) =
      _$GEventCreateInput;

  String get title;
  String get description;
  String get date;
  String get time;
  String get location;
  BuiltList<String>? get category;
  static Serializer<GEventCreateInput> get serializer =>
      _$gEventCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GEventCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GEventCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GEventCreateInput.serializer, json);
}

abstract class GEventUpdateInput
    implements Built<GEventUpdateInput, GEventUpdateInputBuilder> {
  GEventUpdateInput._();

  factory GEventUpdateInput([Function(GEventUpdateInputBuilder b) updates]) =
      _$GEventUpdateInput;

  int get eventId;
  String? get title;
  String? get description;
  String? get date;
  String? get time;
  String? get location;
  BuiltList<String>? get category;
  BuiltList<int>? get members;
  static Serializer<GEventUpdateInput> get serializer =>
      _$gEventUpdateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GEventUpdateInput.serializer, this)
          as Map<String, dynamic>);
  static GEventUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GEventUpdateInput.serializer, json);
}

abstract class GLoginInput implements Built<GLoginInput, GLoginInputBuilder> {
  GLoginInput._();

  factory GLoginInput([Function(GLoginInputBuilder b) updates]) = _$GLoginInput;

  String get email;
  String get password;
  static Serializer<GLoginInput> get serializer => _$gLoginInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginInput.serializer, this)
          as Map<String, dynamic>);
  static GLoginInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginInput.serializer, json);
}

abstract class GReviewInput
    implements Built<GReviewInput, GReviewInputBuilder> {
  GReviewInput._();

  factory GReviewInput([Function(GReviewInputBuilder b) updates]) =
      _$GReviewInput;

  String get text;
  int? get reting;
  static Serializer<GReviewInput> get serializer => _$gReviewInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GReviewInput.serializer, this)
          as Map<String, dynamic>);
  static GReviewInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GReviewInput.serializer, json);
}

abstract class GUpdateUserInput
    implements Built<GUpdateUserInput, GUpdateUserInputBuilder> {
  GUpdateUserInput._();

  factory GUpdateUserInput([Function(GUpdateUserInputBuilder b) updates]) =
      _$GUpdateUserInput;

  String? get fullname;
  String? get date_of_birth;
  String? get location;
  String? get about;
  static Serializer<GUpdateUserInput> get serializer =>
      _$gUpdateUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateUserInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateUserInput.serializer, json);
}
