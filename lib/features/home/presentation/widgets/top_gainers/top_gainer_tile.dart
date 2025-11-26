import 'package:fintech_app/core/helpers/app_regex.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../data/models/top_gainer_model.dart';

class TopGainerTile extends StatelessWidget {
  final TopGainerModel coin;

  const TopGainerTile({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
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
            child: Text(coin.iconUrl, style: TextStyle(fontSize: 20.sp)),
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coin.name,
                  style: TextStyles.font16PrimaryBold,
                ),
                Text(
                  coin.symbol,
                  style: TextStyles.font14StoneGrayMeduim,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                AppRegex.formatWithCommas(coin.price.toInt()),
                style: TextStyles.font14TwilightPurpleMeduim,
              ),
              4.verticalSpace,
              Text(
                '+${coin.percentageChange.toStringAsFixed(2)}%',
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
