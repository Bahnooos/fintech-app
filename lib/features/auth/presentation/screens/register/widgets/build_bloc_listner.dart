import 'package:fintech_app/core/helpers/extension.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theme/app_color.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:fintech_app/features/auth/logic/cubit/auth_cubit.dart';
import 'package:fintech_app/features/auth/logic/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BuildBlocListner extends StatelessWidget {
  final Widget child;
  const BuildBlocListner({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          current is RegisterLoading ||
          current is RegisterSuccess ||
          current is RegisterFailure,
      listener: (context, state) {
        state.whenOrNull(
          registerLoading: () {
            _showLoader(context);
          },
          registerSuccess: (user) async {
            Navigator.of(context, rootNavigator: true).pop();
            // Dismiss loading dialog
            await Future.delayed(const Duration(milliseconds: 500));
            if (!context.mounted) return;
            context.pushNamedAndRemoveUntil(
              Routes.loginScreen,
              (route) => false,
            );
          },
          registerFailure: (message) {
            showErrorState(context, message);
          },
        );
      },
      child: child,
    );
  }
}

void showErrorState(BuildContext context, String error) {
  Navigator.of(context, rootNavigator: true).pop();

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font12StoneGrayMeduim,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14PrimarySemiBold,
            ),
          ),
        ],
      );
    },
  );
}

void _showLoader(BuildContext context) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Center(
        child: LoadingAnimationWidget.inkDrop(
          color: isDark ? AppColors.snowWhite : AppColors.primary,
          size: 75,
        ),
      );
    },
  );
}
