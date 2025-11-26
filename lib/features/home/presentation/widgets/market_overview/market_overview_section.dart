import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/market_overview_model.dart';
import 'market_overview_grid.dart';

class MarketOverviewSection extends StatelessWidget {
  final MarketOverviewModel data;

  const MarketOverviewSection({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Market Overview',
            style: TextStyles.font18PrimaryBold,
          ),
          16.verticalSpace,
          MarketOverviewGrid(data: data),
        ],
      ),
    );
  }
}
