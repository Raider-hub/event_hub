import 'package:event_hub/Providers/shared_providers.dart';
import 'package:event_hub/model/user_model.dart';
import 'package:event_hub/pages/forget_password/state/new_password_state.dart';
import 'package:event_hub/repositories/api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newPasswordProvider =
    StateNotifierProvider<NewPasswordNotifier, NewPasswordState>(
        (ref) => NewPasswordNotifier(ref.read));

class NewPasswordNotifier extends StateNotifier<NewPasswordState> {
  final Reader _read;
  NewPasswordNotifier(this._read) : super(NewPasswordState.initial());

  late final ApiRepository _apiRepository = _read(apiRepositoryProvider);

  Future<void> resetPassword({required UserModel user}) async {
    state = state.copyWith(status: NewPasswordStatus.loading);

    try {
      if (user.password == null) {
        state.copyWith(status: NewPasswordStatus.error, message: 'An error has Occured');
      } else {
        _apiRepository.resetPassword(user: user);
        state = state.copyWith(status: NewPasswordStatus.success);
      }
      
    } catch (e) {
      state = state.copyWith(status: NewPasswordStatus.error);
    }
  }
}
