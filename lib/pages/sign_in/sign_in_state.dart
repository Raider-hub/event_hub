import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

enum LoginStatus { inital, loading, error, success }

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {String? message, required LoginStatus status}) = _LoginState;

  factory LoginState.inital()    => const LoginState(
      message: '', status: LoginStatus.inital);
}
