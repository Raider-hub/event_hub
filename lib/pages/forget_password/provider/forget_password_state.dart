
import 'package:freezed_annotation/freezed_annotation.dart';
part '../state/forget_password_state.freezed.dart';

enum ForgetPasswordStatus { initial, loading, success, error}






@freezed

class ForgetPasswordState with _$ForgetPasswordState{

  const factory ForgetPasswordState({
    String? message,
    required ForgetPasswordStatus status
  }) = _ForgetPasswordState;


  factory ForgetPasswordState.initial() => const ForgetPasswordState(
    message: '', status: ForgetPasswordStatus.initial
  );
}

