import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_reuslt.dart';
import 'package:fintech_app/features/auth/logic/cubit/auth_state.dart';
import 'package:fintech_app/features/auth/presentation/repo/auth_repo.dart';
import 'package:flutter/material.dart';

class AuthCubit extends Cubit<AuthState> {
  final loginFormKey = GlobalKey<FormState>();
  final registerFormKey = GlobalKey<FormState>();

  final TextEditingController registerFirstNameController =
      TextEditingController();
  final TextEditingController registerLastNameController =
      TextEditingController();
  final TextEditingController registerPhoneNumberController =
      TextEditingController();
  final TextEditingController registerEmailController = TextEditingController();
  final TextEditingController registerPasswordController =
      TextEditingController();
  final TextEditingController registerConfirmPasswordController =
      TextEditingController();

  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  AuthCubit(this.authRepo) : super(const AuthState.initial());
  final AuthRepo authRepo;
  Future<void> register() async {
    emit(const AuthState.registerLoading());
    final result = await authRepo.register(
      firstName: registerFirstNameController.text,
      lastName: registerLastNameController.text,
      phoneNumber: registerPhoneNumberController.text,
      email: registerEmailController.text,
      password: registerPasswordController.text,
    );
    result.when(
      success: (user) => emit(AuthState.registerSuccess(user)),
      failure: (error) => emit(AuthState.registerFailure(error.message!)),
    );
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(const AuthState.loginLoading());
    final result = await authRepo.login(
      email: email,
      password: password,
    );
    result.when(
      success: (user) => emit(AuthState.loginSuccess(user)),
      failure: (error) => emit(AuthState.loginFailure(error.message!)),
    );
  }

  Future<void> logOut() async {
    emit(const AuthState.logoutLoading());
    final result = await authRepo.logOut();
    result.when(
      success: (_) => emit(const AuthState.initial()),
      failure: (error) => emit(AuthState.logoutFailure(error.message!)),
    );
  }
}
