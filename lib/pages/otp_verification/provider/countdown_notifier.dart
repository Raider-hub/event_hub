import 'dart:async';

import 'package:event_hub/pages/otp_verification/timer/countdown_state.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countDownProvider =
    StateNotifierProvider<CountDownTimerNotifier, CountDownState>(
        (ref) => CountDownTimerNotifier()..start());

class CountDownTimerNotifier extends StateNotifier<CountDownState> {
  CountDownTimerNotifier() : super(CountDownState.initial());

  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void countDownTime() {
    const reduceSeconds = 1;

    //final seconds = _duration.inSeconds - reduceSeconds;

    final seconds = state.timeLeft.inSeconds - reduceSeconds;
    state = state.copyWith(
        timeLeft: Duration(
          seconds: seconds,
        ),
        status: CountDownStatus.initial);

    if (state.timeLeft.inSeconds == 0) {
      _timer?.cancel();

      // state = state.copyWith(status: CountDownStatus.finished, timeLeft: const Duration(seconds: 10));
      // state.inSeconds == 0;
    }
  }

  void start() {
    state = state.copyWith(
        status: CountDownStatus.initial, timeLeft: state.timeLeft);

    _timer = Timer.periodic(const Duration(seconds: 1), (_) => countDownTime());
  }

  void reStart() {
    state = state.copyWith(
        status: CountDownStatus.initial,
        timeLeft: const Duration(seconds: newotpTime));
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => countDownTime());
  }
}
