// final createUserProvider = Sa

import 'package:event_hub/Providers/shared_providers.dart';
import 'package:event_hub/model/user_model.dart';
import 'package:event_hub/pages/signup/signup_state.dart';
import 'package:event_hub/repositories/api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// enum CreateUserState { inital, loading, error, success }

final createUserProvider =
    StateNotifierProvider<CreateUserNotifier, CreateUserState>((ref) {
  return CreateUserNotifier(ref.read);
});


class CreateUserNotifier extends StateNotifier<CreateUserState> {
  CreateUserNotifier(this._read) : super(CreateUserState.inital());
  final Reader _read;
  late final ApiRepository _apiRepository = _read(apiRepositoryProvider);

  Future<void> createUser({required UserModel user}) async {
    state = state.copyWith(
      status: CreateUserStatus.loading,
    );

    try {
      if (user.email != null &&
          user.password != null &&
          user.fullname != null) {
        await _apiRepository.createUser(user: user);
      } else {
        state = state.copyWith(
            status: CreateUserStatus.error, message: 'An Error Occured');
      }

      state = state.copyWith(
          status: CreateUserStatus.success,
          message: 'OTP has been sent to ${user.email}');
    } catch (e) {
      state =
          state.copyWith(status: CreateUserStatus.error, message: e.toString());
      // print('error  : $e');

    }
  }

  
}
