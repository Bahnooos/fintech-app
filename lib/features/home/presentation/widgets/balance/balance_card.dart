import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/text_styles.dart';
import 'custom_gradient_card.dart';
import 'weekly_profit_pill.dart';

class BalanceCard extends StatelessWidget {
  final double balance;
  final double weeklyProfitPercentage;

  const BalanceCard({
    super.key,
    required this.balance,
    required this.weeklyProfitPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.cardGradient,
      ),
      child: Stack(
        children: [
          CustomGradientCard(
            top: -60.h,
            right: -60.w,
            width: 120.w,
            height: 120.h,
            opacity: .1,
          ),
          CustomGradientCard(
            top: -60.h,
            right: -60.w,
            width: 133.w,
            height: 130.h,
            opacity: .1,
          ),
          CustomGradientCard(
            top: -60.h,
            right: -60.w,
            width: 143.w,
            height: 140.h,
            opacity: .1,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16.0.h,
                horizontal: 12.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Current Balance',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.snowWhite.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '\$${balance.toStringAsFixed(2)}',
                    style: TextStyles.font28SnowWhiteBold.copyWith(
                      letterSpacing: .44,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  WeeklyProfitPill(percentage: weeklyProfitPercentage),
                ],
              ),
            ),
          ),
          CustomGradientCard(
            bottom: -60.h,
            left: -60.w,
            width: 135.w,
            height: 135.h,
            opacity: .1,
          ),
          CustomGradientCard(
            bottom: -60.h,
            left: -60.w,
            width: 148.w,
            height: 150.h,
            opacity: .1,
          ),
          CustomGradientCard(
            bottom: -60.h,
            left: -60.w,
            width: 170.w,
            height: 170.h,
            opacity: .1,
          ),
        ],
      ),
    );
  }
}
