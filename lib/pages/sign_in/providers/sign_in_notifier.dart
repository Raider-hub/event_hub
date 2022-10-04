import 'package:event_hub/Providers/shared_providers.dart';
import 'package:event_hub/model/user_model.dart';
import 'package:event_hub/pages/sign_in/sign_in_state.dart';
import 'package:event_hub/repositories/api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// enum CreateUserState { inital, loading, error, success }

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier(ref.read);
});

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(this._read) : super(LoginState.inital());
  final Reader _read;
  late final ApiRepository _apiRepository = _read(apiRepositoryProvider);

  Future<void> login({required UserModel user}) async {
    state = state.copyWith(
      status: LoginStatus.loading,
    );

    try {
      if (user.email != null && user.password != null) {
        await _apiRepository.login(user: user);
      } else {
      
        state = state.copyWith(
            status: LoginStatus.error, message: 'An Error Occured');
      }

      state = state.copyWith(
        status: LoginStatus.success,
      );
    } catch (e) {
      state = state.copyWith(status: LoginStatus.error, message: e.toString());
      // print('error  : $e');

    }
  }
}
