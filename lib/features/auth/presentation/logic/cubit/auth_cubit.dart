import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_reuslt.dart';
import 'package:fintech_app/features/auth/presentation/logic/cubit/auth_state.dart';
import 'package:fintech_app/features/auth/presentation/repo/auth_repo.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(const AuthState.initial());
  final AuthRepo authRepo;
  Future<void> register({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String email,
    required String password,
  }) async {
    emit(const AuthState.loading());
    final result = await authRepo.register(
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      email: email,
      password: password,
    );
    result.when(
      success: (user) => emit(AuthState.success(user)),
      failure: (error) => emit(AuthState.failure(error.message!)),
    );
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(const AuthState.loading());
    final result = await authRepo.login(
      email: email,
      password: password,
    );
    result.when(
      success: (user) => emit(AuthState.success(user)),
      failure: (error) => emit(AuthState.failure(error.message!)),
    );
  }

  Future<void> logOut() async {
    emit(const AuthState.loading());
    final result = await authRepo.logOut();
    result.when(
      success: (_) => emit(const AuthState.initial()),
      failure: (error) => emit(AuthState.failure(error.message!)),
    );
  }
}
