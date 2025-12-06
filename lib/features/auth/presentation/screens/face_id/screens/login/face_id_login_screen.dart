import 'package:fintech_app/core/helpers/extension.dart';
import 'package:fintech_app/core/helpers/spacing.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theme/app_images.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:fintech_app/core/widgets/custom_background_image.dart';
import 'package:fintech_app/core/widgets/custom_button.dart';
import 'package:fintech_app/features/auth/logic/cubit/auth_cubit.dart';
import 'package:fintech_app/features/auth/presentation/screens/fingerprint/widgets/custom_title_subtitle.dart';
import 'package:fintech_app/features/auth/presentation/screens/login/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaceIdLoginScreen extends StatefulWidget {
  const FaceIdLoginScreen({super.key});

  @override
  State<FaceIdLoginScreen> createState() => _FaceIdLoginScreenState();
}

class _FaceIdLoginScreenState extends State<FaceIdLoginScreen> {
  @override
  void initState() {
    super.initState();
    // Trigger biometric authentication when screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthCubit>().authenticateWithBiometrics();
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return BiomerticsBlocListner(
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const CustomBackgroundImage(),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0.w,
                  horizontal: 20.h,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          verticalSpace(250),
                          Center(
                            child: Image.asset(
                              isDarkMode
                                  ? AppImages.faceIdVerifiedDarkImage
                                  : AppImages.faceIdVerifiedImage,
                              width: 150.w,
                              height: 150.h,
                            ),
                          ),
                          CustomTitleSubtitle(
                            topSpacing: 30,
                            title: ' You\'re verified',
                            titleStyle: isDarkMode
                                ? TextStyles.font26SnowWhiteBold
                                : TextStyles.font26PrimaryBold,
                            subtitle:
                                'You have been verified your\ninformation completely. Let\'s make transactions!',
                            subtitleStyle: isDarkMode
                                ? TextStyles.font18SnowWhiteRegular
                                : TextStyles.font18OnboardingBlackRegular,
                          ),
                        ],
                      ),
                    ),

                    CustomButton(
                      text: 'Continue To Home',
                      onPressed: () => context.pushNamed(
                        Routes.homeScreen,
                      ),
                    ),
                    verticalSpace(30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
