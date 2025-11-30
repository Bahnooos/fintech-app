import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'balance/balance_card.dart';
import 'header/home_header.dart';
import 'market_overview/market_overview_section.dart';
import 'top_gainers/top_gainers_section.dart';
import 'trending/trending_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeHeader(),
          8.verticalSpace,
          const BalanceCard(),
          24.verticalSpace,
          const MarketOverviewSection(),
          24.verticalSpace,
          const TrendingSection(),
          24.verticalSpace,
          const TopGainersSection(),
          24.verticalSpace,
        ],
      ),
    );
  }
}
