import 'package:fintech_app/core/theme/text_styles.dart';
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
          style: TextStyles.font12CloudWhiteMeduim,
        ),
        SizedBox(width: 4.w),

        Container(
          height: 22.h,

          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${percentage.toStringAsFixed(2)}%',
                style: TextStyles.font12CloudWhiteMeduim,
              ),
              SizedBox(width: 2.w),
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
