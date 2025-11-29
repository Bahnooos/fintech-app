import 'package:cached_network_image/cached_network_image.dart';
import 'package:fintech_app/core/helpers/app_regex.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:fintech_app/features/home/data/models/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';

class TopGainerTile extends StatelessWidget {
  const TopGainerTile({
    super.key,
    this.coinModel,
  });
  final CoinModel? coinModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Container(
            width: 36.w,
            height: 36.h,
            decoration: const BoxDecoration(
              color: AppColors.cloudWhite,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: CachedNetworkImage(
              imageUrl: coinModel?.image ?? '',
              fit: BoxFit.contain,
              width: 24.w,
              height: 24.h,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coinModel?.name ?? '',
                  style: TextStyles.font16PrimaryBold,
                ),
                Text(
                  coinModel?.symbol ?? '',
                  style: TextStyles.font14StoneGrayMeduim,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                AppRegex.formatWithCommas(
                  coinModel?.currentPrice?.toInt() ?? 0,
                ),
                style: TextStyles.font14TwilightPurpleMeduim,
              ),
              4.verticalSpace,
              Text(
                '+${coinModel?.priceChangePercentage24h?.toStringAsFixed(2)}%',
                style: TextStyles.font12AlertOrangeRegular.copyWith(
                  color: AppColors.seafoamGreen,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
