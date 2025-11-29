import 'package:fintech_app/core/helpers/extension.dart';
import 'package:fintech_app/core/helpers/spacing.dart';
import 'package:fintech_app/core/icons/my_flutter_app_icons.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/widgets/custom_auth_footer.dart';
import 'package:fintech_app/core/widgets/custom_auth_header.dart';
import 'package:fintech_app/core/widgets/custom_background_image.dart';
import 'package:fintech_app/core/widgets/custom_button.dart';
import 'package:fintech_app/core/widgets/custom_text_form_field.dart';
import 'package:fintech_app/features/auth/login/presentation/widgets/biometric_login_buttons.dart';
import 'package:fintech_app/features/auth/login/presentation/widgets/custom_divider_with_text.dart';
import 'package:fintech_app/features/auth/login/presentation/widgets/login_row_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackgroundImage(),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0.w,
                  horizontal: 20.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomAuthHeader(
                      title: 'Login To Your Account',
                      subtitle: 'Welcome back you\'ve been missed!',
                    ),
                    verticalSpace(100),
                    CustomTextFormField(
                      hintText: 'E-mail ID',
                      onTap: () {},
                      prefixIcon: const Icon(MyFlutterApp.emailicon),
                    ),
                    verticalSpace(16),
                    CustomTextFormField(
                      hintText: 'Password',
                      onTap: () {},
                      prefixIcon: const Icon(MyFlutterApp.passwordicon),
                    ),
                    verticalSpace(12),
                    LoginOptionsRow(
                      onRememberMeChanged: (value) {},
                      onForgotPasswordTap: () {},
                      isDarkMode: true,
                    ),
                    verticalSpace(30),
                    CustomButton(
                      text: 'Login',
                      onPressed: () => context.pushNamed(Routes.homeScreen),
                    ),
                    verticalSpace(36),
                    const CustomDividerWithText(text: 'Or login with'),
                    verticalSpace(30),
                    BiometricLoginButtons(
                      onFingerprintTap: () => context.pushNamed(
                        Routes.verifiedLoginScreen,
                      ),
                      onFaceIdTap: () => context.pushNamed(
                        Routes.faceIdLoginScreen,
                      ),
                    ),
                    verticalSpace(22),
                    CustomAuthFooter(
                      prefixText: 'Don\'t have an account?',
                      actionText: 'Sign Up',
                      onActionTap: () =>
                          context.pushNamed(Routes.registerScreen),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
