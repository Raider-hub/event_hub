import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_password_state.freezed.dart';

enum NewPasswordStatus { initial, loading, error, success }

@freezed
class NewPasswordState with _$NewPasswordState {
  const factory NewPasswordState(
      {String? message,  required NewPasswordStatus status}) = _NewPasswordState;

  factory NewPasswordState.initial() =>
      const NewPasswordState(message: '', status: NewPasswordStatus.initial);
}
