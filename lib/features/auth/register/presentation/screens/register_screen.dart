import 'package:fintech_app/core/helpers/extension.dart';
import 'package:fintech_app/core/helpers/spacing.dart';
import 'package:fintech_app/core/icons/my_flutter_app_icons.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/widgets/custom_auth_footer.dart';
import 'package:fintech_app/core/widgets/custom_auth_header.dart';
import 'package:fintech_app/core/widgets/custom_background_image.dart';
import 'package:fintech_app/core/widgets/custom_button.dart';
import 'package:fintech_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                      topSpacing: 50,
                      title: 'Create Your Account',
                      subtitle:
                          'Sign up to enjoy the best managing experience!',
                    ),
                    verticalSpace(45),
                    const RegisterFormFields(),
                    verticalSpace(30),
                    CustomButton(
                      text: 'Register',
                      onPressed: () =>
                          context.pushNamed(Routes.fingerprintRegisterScreen),
                    ),
                    verticalSpace(22),
                    CustomAuthFooter(
                      prefixText: 'Already have an account? ',
                      actionText: 'Login',
                      onActionTap: () => context.pushNamedAndRemoveUntil(
                        Routes.loginScreen,
                        (route) => false,
                      ),
                    ),
                    verticalSpace(18),
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

class RegisterFormFields extends StatelessWidget {
  const RegisterFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: 'First Name',
          onTap: () {},
          prefixIcon: const Icon(MyFlutterApp.profileicon),
        ),
        verticalSpace(16),
        CustomTextFormField(
          hintText: 'Last Name',
          onTap: () {},
          prefixIcon: const Icon(MyFlutterApp.profileicon),
        ),
        verticalSpace(16),
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
        verticalSpace(16),
        CustomTextFormField(
          hintText: 'Confirm Password',
          onTap: () {},
          prefixIcon: const Icon(MyFlutterApp.passwordicon),
        ),
        verticalSpace(16),
        CustomTextFormField(
          hintText: 'xxx xxx xxx',
          onTap: () {},
          prefixIcon: const Icon(MyFlutterApp.phoneicon),
        ),
      ],
    );
  }
}
