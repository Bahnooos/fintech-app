import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/home_data_model.dart';
import 'balance/balance_card.dart';
import 'header/home_header.dart';
import 'market_overview/market_overview_section.dart';
import 'top_gainers/top_gainers_section.dart';
import 'trending/trending_section.dart';

class HomeScreenBody extends StatelessWidget {
  final HomeDataModel data;

  const HomeScreenBody({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeHeader(),
          8.verticalSpace,
          BalanceCard(
            balance: data.balance.currentBalance,
            weeklyProfitPercentage: data.balance.weeklyProfitPercentage,
          ),
          SizedBox(height: 24.h),
          MarketOverviewSection(data: data.marketOverview),
          SizedBox(height: 24.h),
          TrendingSection(coins: data.trendingCoins),
          SizedBox(height: 24.h),
          TopGainersSection(gainers: data.topGainers),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
