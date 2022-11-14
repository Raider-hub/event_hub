import 'package:event_hub/Providers/shared_providers.dart';
import 'package:event_hub/pages/forget_password/state/verify_password_state.dart';

import 'package:event_hub/repositories/api_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final verifyPasswordProvider =
    StateNotifierProvider<VerifyPasswordNotifier, VerifyPasswordState>((ref) {
  return VerifyPasswordNotifier(ref.read);
});

class VerifyPasswordNotifier extends StateNotifier<VerifyPasswordState> {
  VerifyPasswordNotifier(this._read) : super(VerifyPasswordState.inital());

  final Reader _read;

  late final ApiRepository _apiRepository = _read(apiRepositoryProvider);

  Future<void> verifyPassword(String otp) async {
    state = state.copyWith(
      status: VerifyPasswordStatus.loading,
    );

    try {
      await _apiRepository.verifyPasswordCode(otp: otp);
      state = state.copyWith(status: VerifyPasswordStatus.success, message: '');
    } catch (e) {
      state = state.copyWith(
        status: VerifyPasswordStatus.error, message: e.toString()
      );
    }
  }
}
