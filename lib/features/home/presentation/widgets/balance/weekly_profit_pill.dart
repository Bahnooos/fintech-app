import 'package:fintech_app/core/helpers/extension.dart';
import 'package:fintech_app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';

class WeeklyProfitPill extends StatelessWidget {
  final double percentage;

  const WeeklyProfitPill({
    super.key,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Weekly Profit',
          style: context.labelMedium_14?.copyWith(
            fontWeight: FontWeightHelper.regular,
            color: Colors.white,
          ),
        ),
        4.horizontalSpace,

        Container(
          height: 22.h,

          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${percentage.toStringAsFixed(2)}%',
                style: context.labelSmall_12?.copyWith(
                  color: AppColors.cloudWhite,
                ),
              ),
              2.horizontalSpace,
              Icon(
                Icons.keyboard_arrow_down,
                size: 16.r,
                color: AppColors.snowWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
