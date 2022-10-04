import 'package:event_hub/Providers/shared_providers.dart';
import 'package:event_hub/repositories/api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


enum ChoiceStatus { initial, loading, sucess, error }

final interestChoiceProvider =
    StateNotifierProvider<InterestChoiceNotifier, ChoiceStatus>(
        (ref) => InterestChoiceNotifier(ref.read));

class InterestChoiceNotifier extends StateNotifier<ChoiceStatus> {
  final Reader _read;
  InterestChoiceNotifier(this._read) : super(ChoiceStatus.initial);

  late final ApiRepository _apiRepository = _read(apiRepositoryProvider);

  Future<void> addInterest({required List<int> choices}) async {
    state = ChoiceStatus.loading;

    try {
      if (choices.isEmpty) {
        state = ChoiceStatus.error;
      } else {
        _apiRepository.addInterest(choices: choices);
      }
      state = ChoiceStatus.sucess;
    } catch (e) {
      state = ChoiceStatus.error;
    }
  }
}
