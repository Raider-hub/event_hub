import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Duration useCountDownTimer() {
  return use(const CountdownTimer());
}

class CountdownTimer extends Hook<Duration> {
  const CountdownTimer();

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends HookState<Duration, CountdownTimer> {
  Timer? _timer;
  Duration _duration = const Duration(seconds: 10);

  void countDownTime() {
    const reduceSeconds = 1;
    setState(() {
      final seconds = _duration.inSeconds - reduceSeconds;
      _duration = Duration(seconds: seconds);

      if (_duration.inSeconds == 0) {
        _timer?.cancel();
      }
    });
  }

  void restartTimer() {
    setState(() {
      _duration = const Duration(seconds: 90);
      _timer =
          Timer.periodic(const Duration(seconds: 1), (_) => countDownTime());
    });
  }

  @override
  void initHook() {
    super.initHook();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => countDownTime());
  }

  @override
  Duration build(BuildContext context) {
    return _duration;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
