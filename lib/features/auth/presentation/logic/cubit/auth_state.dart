import 'package:fintech_app/features/auth/data/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success(UserModel user) = _Success;
  const factory AuthState.failure(String message) = _Failure;
}
