import 'package:event_hub/Providers/shared_providers.dart';
import 'package:event_hub/pages/forget_password/state/resend_passwordotp_state.dart';


import 'package:event_hub/repositories/api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final resendPassOtpProvider =
    StateNotifierProvider<ResendPassOtpNotifier, ResendPassOtpState>((ref) {
  return ResendPassOtpNotifier(ref.read);
});

class ResendPassOtpNotifier extends StateNotifier<ResendPassOtpState> {
  ResendPassOtpNotifier(this._read) : super(ResendPassOtpState.initial());

  final Reader _read;

  late final ApiRepository _apiRepository = _read(apiRepositoryProvider);

  Future<void> resendPassOtp() async {
    state = state.copyWith(status: ResendPassOtpStatus.loading);

    try {
      await _apiRepository.resendOtp();
      state = state.copyWith(
          status: ResendPassOtpStatus.success, message: 'Otp Sucessfully Sent');
    } catch (e) {
      state =
          state.copyWith(status: ResendPassOtpStatus.error, message: e.toString());
    }
  }
}
