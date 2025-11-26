import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketOverviewItem extends StatelessWidget {
  final String label;
  final String value;
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
            value,
            style: TextStyles.font20TwilightPurpleMeduim,
          ),
          if (percentage != null) ...[
            4.verticalSpace,
            Text(
              '${percentage!.toStringAsFixed(2)}%',
              style: TextStyles.font12ElectricBlueRegular,
            ),
          ],
        ],
      ),
    );
  }
}
