import 'package:event_hub/Providers/shared_providers.dart';
import 'package:event_hub/pages/otp_verification/resend_otp_state.dart';
import 'package:event_hub/repositories/api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final resendOtpProvider =
    StateNotifierProvider<ResendOtpNotifier, ResendOtpState>((ref) {
  return ResendOtpNotifier(ref.read);
});

class ResendOtpNotifier extends StateNotifier<ResendOtpState> {
  ResendOtpNotifier(this._read) : super(ResendOtpState.initial());

  final Reader _read;

  late final ApiRepository _apiRepository = _read(apiRepositoryProvider);

  Future<void> resendOtp() async {
    state = state.copyWith(status: ResendOtpStatus.loading);

    try {
      await _apiRepository.resendOtp();
      state = state.copyWith(
          status: ResendOtpStatus.success, message: 'Otp Sucessfully Sent');
    } catch (e) {
      state =
          state.copyWith(status: ResendOtpStatus.error, message: e.toString());
    }
  }
}
