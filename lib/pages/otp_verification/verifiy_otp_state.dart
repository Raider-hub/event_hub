import 'package:freezed_annotation/freezed_annotation.dart';

part 'verifiy_otp_state.freezed.dart';

enum VerifyOtpStatus { inital, loading, error, success }

@freezed
class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState(
      {String? message, required VerifyOtpStatus status}) = _VerifyOtpState;

  factory VerifyOtpState.inital() =>
      const VerifyOtpState(message: '', status: VerifyOtpStatus.inital);
}
