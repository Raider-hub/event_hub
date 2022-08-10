import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
 class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String fullname,
   required String dob,
   required String email,
   required String about,
   required String review,
   required String interest,
  required  String event,
   required String event_hosted,
   required String followers,
   required String following,
   required String totalFollowers,
   required String totalFollowing,
  }) = _UserModel;

   factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModel(json);
}
