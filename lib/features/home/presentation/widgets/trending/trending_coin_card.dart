import 'package:cached_network_image/cached_network_image.dart';
import 'package:fintech_app/core/helpers/app_regex.dart';
import 'package:fintech_app/features/home/data/models/trending_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/text_styles.dart';

class TrendingCoinCard extends StatelessWidget {
  final CoinWrapper? coins;

  const TrendingCoinCard({super.key, required this.coins});

  @override
  Widget build(BuildContext context) {
    final double isPositive = coins?.item?.data?.changePercentage?['btc'];

    return Container(
      width: 192.w,

      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                coins?.item?.name?.split(' ').first ?? '',
                style: TextStyles.font14TwilightPurpleMeduim,
              ),
              const Spacer(),
              CachedNetworkImage(
                imageUrl: coins?.item?.image ?? '',
                fit: BoxFit.contain,
                width: 24.w,
                height: 24.h,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ],
          ),
          Text(
            coins?.item?.symbol ?? '',
            style: TextStyles.font12StormGrayRegular,
          ),
          16.verticalSpace,
          Row(
            children: [
              Text(
                AppRegex.formatWithCommas(
                  coins?.item?.data?.price?.round() ?? 0,
                ),
                style: TextStyles.font20TwilightPurpleMeduim,
              ),
              const Spacer(),
              Text(
                '${coins?.item?.data?.changePercentage?['btc'].toStringAsFixed(2)}%',
                style: TextStyles.font12ElectricBlueRegular.copyWith(
                  color: isPositive > 0
                      ? AppColors.electricBlue
                      : AppColors.errorRed,
                ),
              ),
              2.horizontalSpace,
              Icon(
                isPositive > 0 ? Icons.arrow_upward : Icons.arrow_downward,
                color: isPositive > 0
                    ? AppColors.electricBlue
                    : AppColors.errorRed,
                size: 10.r,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
