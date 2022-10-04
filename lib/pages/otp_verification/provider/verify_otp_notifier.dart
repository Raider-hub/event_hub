import 'package:event_hub/Providers/shared_providers.dart';
import 'package:event_hub/pages/otp_verification/verifiy_otp_state.dart';
import 'package:event_hub/repositories/api_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final verifyOtpProvider =
    StateNotifierProvider<VerifyOtpNotifier, VerifyOtpState>((ref) {
  return VerifyOtpNotifier(ref.read);
});

class VerifyOtpNotifier extends StateNotifier<VerifyOtpState> {
  VerifyOtpNotifier(this._read) : super(VerifyOtpState.inital());

  final Reader _read;

  late final ApiRepository _apiRepository = _read(apiRepositoryProvider);

  Future<void> verifyOtp(String otp) async {
    state = state.copyWith(
      status: VerifyOtpStatus.loading,
    );

    try {
      await _apiRepository.verifyOtp(otp: otp);
      state = state.copyWith(status: VerifyOtpStatus.success, message: '');
    } catch (e) {
      state = state.copyWith(
        status: VerifyOtpStatus.error, message: e.toString()
      );
    }
  }
}
