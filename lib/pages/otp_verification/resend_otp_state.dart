import 'package:freezed_annotation/freezed_annotation.dart';
part 'resend_otp_state.freezed.dart';

enum ResendOtpStatus { initial, loading, error, success }

@freezed
class ResendOtpState with _$ResendOtpState {
  const factory ResendOtpState(
      {String? message, required ResendOtpStatus status}) = _ResendOtpState;

  factory ResendOtpState.initial() =>
      const ResendOtpState(message: '', status: ResendOtpStatus.initial);
}
