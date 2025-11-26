import 'package:fintech_app/core/helpers/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../data/models/trending_coin_model.dart';

class TrendingCoinCard extends StatelessWidget {
  final TrendingCoinModel coin;

  const TrendingCoinCard({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    final isPositive = coin.isPositiveChange;

    return Container(
      width: 192.w,

      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                coin.name,
                style: TextStyles.font14TwilightPurpleMeduim,
              ),
              const Spacer(),
              Text(coin.iconUrl, style: TextStyle(fontSize: 24.sp)),
            ],
          ),
          Text(
            coin.symbol,
            style: TextStyles.font12StormGrayRegular,
          ),
          16.verticalSpace,
          Row(
            children: [
              Text(
                AppRegex.formatWithCommas(coin.price.round()),
                style: TextStyles.font20TwilightPurpleMeduim,
              ),
              const Spacer(),
              Text(
                '${coin.percentageChange.toStringAsFixed(2)}%',
                style: TextStyles.font12ElectricBlueRegular.copyWith(
                  color: isPositive
                      ? AppColors.electricBlue
                      : AppColors.errorRed,
                ),
              ),
              2.horizontalSpace,
              Icon(
                isPositive ? Icons.arrow_upward : Icons.arrow_downward,
                color: isPositive ? AppColors.electricBlue : AppColors.errorRed,
                size: 10.r,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
