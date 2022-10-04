import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? id,
    String? fullname,
    String? dob,
    String? email,
    String? about,
    String? review,
    String? interest,
    String? event,
    String? event_hosted,
    String? followers,
    String? following,
    String? totalFollowers,
    String? totalFollowing,
    String? password,
  }) = _UserModel; 

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
