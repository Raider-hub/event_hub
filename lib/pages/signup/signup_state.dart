import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

enum CreateUserStatus { inital, loading, error, success }

@freezed
class CreateUserState with _$CreateUserState {
  const factory CreateUserState(
      { String? token,
       String? message,
    
      required CreateUserStatus status}) = _CreateUserState;

  factory CreateUserState.inital() => const CreateUserState(
      token: '', message: '',  status: CreateUserStatus.inital);
}
