import 'package:fintech_app/core/helpers/spacing.dart';
import 'package:fintech_app/core/theme/app_color.dart';
import 'package:fintech_app/core/theme/app_images.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:fintech_app/core/widgets/custom_auth_header.dart';
import 'package:fintech_app/core/widgets/custom_background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FingerprintLoginScreen extends StatelessWidget {
  const FingerprintLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
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
                  const CustomAuthHeader(
                    title: 'Touch ID sensor to verify yourself',
                    subtitle: '',
                  ),
                  verticalSpace(100),
                  Image.asset(
                    color: isDarkMode
                        ? AppColors.snowWhite
                        : AppColors.lighterGray,
                    AppImages.fingerPrintImage,
                    width: 150.w,
                    height: 150.h,
                  ),
                  verticalSpace(100),
                  Text(
                    textAlign: TextAlign.center,
                    'Please verify your identity using touch ID and it will proceed automatically.',
                    style: isDarkMode
                        ? TextStyles.font16SnowWhiteRegular
                        : TextStyles.font16MediumGrayRegular,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
