// import 'dart:async';


// import 'package:event_hub/pages/otp_verification/timer/countdown_state.dart';


// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final countDownProvider =
//     StateNotifierProvider<CountDownTimerNotifier, CountDownState>(
//         (ref) => CountDownTimerNotifier());

// class CountDownTimerNotifier extends StateNotifier<CountDownState> {
//   CountDownTimerNotifier() : super(_initialState);

//   final Ticker _ticker = Ticker();

//   StreamSubscription<int>? _tickerSubscription;

//   static String _durationString(int duration) {
//     final minutes = ((duration / 60) % 60).floor().toString().padLeft(2, '0');
//     final seconds = (duration % 60).floor().toString().padLeft(2, '0');
//     return '$minutes:$seconds';
//   }

//   @override
//   static const int _initialDuration = 10;

//   static final _initialState = CountDownState(_durationString(_initialDuration),
//       status: CountDownStatus.initial);

//   @override
//   void dispose() {
//     _tickerSubscription?.cancel();
//     super.dispose();
//   }

//   void start() {
//     // if ( CountDownState.initial() == state.copyWith(status: CountDownStatus.finished) ) {
//     _startTimer();
//     // _restartTimer();

//     // } else {
//     //   _startTimer();
//     // }
//   }
//   void reset() {
//   _tickerSubscription?.cancel();
//   state = _initialState;
// }

// //   void _restartTimer() {
// //   // _tickerSubscription?.resume();
// //   state = CountDownState(status: status);
// // }

//   // void stopCountDown() {
//   //   state = false;
//   // }

//   // void startCountdown() {
//   //   state = true;

//   //   _timer = Timer(const Duration(seconds: 10), () => stopCountDown());
//   // }

//   void _startTimer() {
//     _tickerSubscription?.cancel();

//     _tickerSubscription =
//         _ticker.tick(ticks: _initialDuration).listen((duration) {
//       state = CountDownState(_durationString(duration),
//           status: CountDownStatus.initial);
//     });

//     _tickerSubscription?.onDone(() {
//       state = CountDownState(state.timeLeft.toString(),
//           status: CountDownStatus.finished);
//     });

//     state = CountDownState(_durationString(_initialDuration),
//         status: CountDownStatus.initial);
//   }
// }

// class Ticker {
//   Stream<int> tick({required int ticks}) {
//     return Stream.periodic(
//       const Duration(seconds: 1),
//       (x) => ticks - x - 1,
//     ).take(ticks);
//   }
// }
