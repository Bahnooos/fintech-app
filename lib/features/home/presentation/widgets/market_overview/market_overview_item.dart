import 'package:fintech_app/core/theme/app_color.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketOverviewItem extends StatelessWidget {
  final String label;
  final String? value;
  final double? percentage;

  const MarketOverviewItem({
    super.key,
    required this.label,
    required this.value,
    this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyles.font14TwilightPurpleMeduim,
          ),
          8.verticalSpace,
          Text(
            value ?? '',
            style: TextStyles.font20TwilightPurpleMeduim,
          ),
          if (percentage != null) ...[
            4.verticalSpace,
            Row(
              children: [
                Text(
                  '${percentage?.toStringAsFixed(2)}%',
                  style: TextStyles.font12ElectricBlueRegular.copyWith(
                    color: (percentage ?? 0) > 0
                        ? AppColors.lavenderPurple
                        : Colors.red,
                  ),
                ),
                Icon(
                  (percentage ?? 0) > 0
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  color: (percentage ?? 0) > 0
                      ? AppColors.lavenderPurple
                      : Colors.red,
                  size: 10,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
