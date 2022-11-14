import 'package:freezed_annotation/freezed_annotation.dart';
part 'resend_passwordotp_state.freezed.dart';

enum ResendPassOtpStatus { initial, loading, error, success }

@freezed
class ResendPassOtpState with _$ResendPassOtpState {
  const factory ResendPassOtpState(
      {String? message,  required ResendPassOtpStatus status}) = _ResendPassOtpState;

  factory ResendPassOtpState.initial() =>
      const ResendPassOtpState(message: '', status: ResendPassOtpStatus.initial);
}
