import 'package:fintech_app/core/helpers/spacing.dart';
import 'package:fintech_app/core/theme/app_color.dart';
import 'package:fintech_app/core/theme/app_images.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:fintech_app/core/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.watch<ThemeCubit>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Settings',
          style: TextStyles.font24PrimaryBold.copyWith(
            color: isDarkMode ? AppColors.snowWhite : AppColors.primary,
          ),
          textAlign: TextAlign.left,
        ),
        verticalSpace(24),
        Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 48.r,
                child: Image.asset(AppImages.profileImage),
              ),
              verticalSpace(24),
              Text(
                'Moahmed Osama',
                style: TextStyles.font24PrimaryBold.copyWith(
                  color: isDarkMode ? AppColors.snowWhite : AppColors.primary,
                ),
              ),
              verticalSpace(24),
            ],
          ),
        ),
      ],
    );
  }
}
