import 'package:event_hub/Providers/shared_providers.dart';
import 'package:event_hub/pages/forget_password/forget_password_state.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/user_model.dart';

final forgetPassWordProvider =
    StateNotifierProvider<ForgetPasswordNotifier, ForgetPasswordState>(
        (ref) => ForgetPasswordNotifier(ref.read));

class ForgetPasswordNotifier extends StateNotifier<ForgetPasswordState> {
  final Reader _read;

  ForgetPasswordNotifier(this._read) : super(ForgetPasswordState.initial());

  late final _apiRepository = _read(apiRepositoryProvider);

  Future<void> forgetPassword({required UserModel user}) async {
    state = state.copyWith(status: ForgetPasswordStatus.loading);
    try {
      if (user.email != null ) {
        await _apiRepository.forgetPassword(user: user);
      } else {
        state = state.copyWith(
            status: ForgetPasswordStatus.error, message: 'An Error Occured');
      }

      state = state.copyWith(
        status: ForgetPasswordStatus.success, message: 'Email Sucessfully Sent'
      );
    } catch (e) {
      state = state.copyWith(
          status: ForgetPasswordStatus.error, message: e.toString());
    }
  }
}
