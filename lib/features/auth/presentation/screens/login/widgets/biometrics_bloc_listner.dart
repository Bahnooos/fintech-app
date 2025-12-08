import 'package:fintech_app/core/helpers/flutter_toast.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/widgets/custom_loading_dialog.dart';
import 'package:fintech_app/features/auth/logic/cubit/auth_cubit.dart';
import 'package:fintech_app/features/auth/logic/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BiomerticsBlocListner extends StatelessWidget {
  const BiomerticsBlocListner({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          biometricLoading: () {
            showLoadingDialog(context);
          },
          biometricSuccess: () async {
            Navigator.of(context, rootNavigator: true).pop();
            // Navigate to home screen using root navigator to escape auth flow
            Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
              Routes.homeScreen,
              (route) => false,
            );
          },
          biometricFailure: (message) {
            Navigator.of(context, rootNavigator: true).pop();
            FlutterToast.showFlutterToast(
              message: message,
              state: ToastStates.error,
              context: context,
            );
          },
        );
      },
      child: child,
    );
  }
}
