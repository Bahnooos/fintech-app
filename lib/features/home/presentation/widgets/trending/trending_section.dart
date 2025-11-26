import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/trending_coin_model.dart';
import 'trending_coin_card.dart';

class TrendingSection extends StatelessWidget {
  final List<TrendingCoinModel> coins;

  const TrendingSection({
    super.key,
    required this.coins,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trending Now',
                style: TextStyles.font18PrimaryBold,
              ),
              Text(
                'View all',
                style: TextStyles.font12ElectricBlueMeduim,
              ),
            ],
          ),
        ),
        16.verticalSpace,
        SizedBox(
          height: 110.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemCount: coins.length,
            itemBuilder: (context, index) {
              return TrendingCoinCard(coin: coins[index]);
            },
          ),
        ),
      ],
    );
  }
}
