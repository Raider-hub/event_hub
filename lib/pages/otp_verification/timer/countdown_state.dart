



import 'package:event_hub/widgets/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countdown_state.freezed.dart';


enum CountDownStatus {initial, started, finished}

@freezed
class CountDownState with _$CountDownState{

  const factory CountDownState( {
    required Duration timeLeft ,
    required CountDownStatus status

  }) = _CountDownState;

   factory CountDownState.initial() =>
     const CountDownState(timeLeft:Duration(seconds: otpTime), status: CountDownStatus.initial);



 
}