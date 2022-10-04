// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'create_user.data.gql.g.dart';

abstract class Gcreate_userData
    implements Built<Gcreate_userData, Gcreate_userDataBuilder> {
  Gcreate_userData._();

  factory Gcreate_userData([Function(Gcreate_userDataBuilder b) updates]) =
      _$Gcreate_userData;

  static void _initializeBuilder(Gcreate_userDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_userData_create_user get create_user;
  static Serializer<Gcreate_userData> get serializer =>
      _$gcreateUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(Gcreate_userData.serializer, this)
          as Map<String, dynamic>);
  static Gcreate_userData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gcreate_userData.serializer, json);
}

abstract class Gcreate_userData_create_user
    implements
        Built<Gcreate_userData_create_user,
            Gcreate_userData_create_userBuilder> {
  Gcreate_userData_create_user._();

  factory Gcreate_userData_create_user(
          [Function(Gcreate_userData_create_userBuilder b) updates]) =
      _$Gcreate_userData_create_user;

  static void _initializeBuilder(Gcreate_userData_create_userBuilder b) =>
      b..G__typename = 'SignPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  String? get token;
  bool get ok;
  static Serializer<Gcreate_userData_create_user> get serializer =>
      _$gcreateUserDataCreateUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      Gcreate_userData_create_user.serializer, this) as Map<String, dynamic>);
  static Gcreate_userData_create_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(Gcreate_userData_create_user.serializer, json);
}
