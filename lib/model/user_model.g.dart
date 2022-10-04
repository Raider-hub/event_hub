// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String?,
      fullname: json['fullname'] as String?,
      dob: json['dob'] as String?,
      email: json['email'] as String?,
      about: json['about'] as String?,
      review: json['review'] as String?,
      interest: json['interest'] as String?,
      event: json['event'] as String?,
      event_hosted: json['event_hosted'] as String?,
      followers: json['followers'] as String?,
      following: json['following'] as String?,
      totalFollowers: json['totalFollowers'] as String?,
      totalFollowing: json['totalFollowing'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'dob': instance.dob,
      'email': instance.email,
      'about': instance.about,
      'review': instance.review,
      'interest': instance.interest,
      'event': instance.event,
      'event_hosted': instance.event_hosted,
      'followers': instance.followers,
      'following': instance.following,
      'totalFollowers': instance.totalFollowers,
      'totalFollowing': instance.totalFollowing,
      'password': instance.password,
    };
