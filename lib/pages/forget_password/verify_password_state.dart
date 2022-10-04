import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_password_state.freezed.dart';

enum VerifyPasswordStatus { inital, loading, error, success }

@freezed
class VerifyPasswordState with _$VerifyPasswordState {
  const factory VerifyPasswordState(
      {String? message, required VerifyPasswordStatus status}) = _VerifyPasswordState;

  factory VerifyPasswordState.inital() =>
      const VerifyPasswordState(message: '', status: VerifyPasswordStatus.inital);
}
