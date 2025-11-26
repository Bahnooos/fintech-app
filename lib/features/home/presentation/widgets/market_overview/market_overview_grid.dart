import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/market_overview_model.dart';
import 'market_overview_item.dart';

class MarketOverviewGrid extends StatelessWidget {
  final MarketOverviewModel data;

  const MarketOverviewGrid({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12.h,
      crossAxisSpacing: 12.w,
      childAspectRatio: 1.7,
      children: [
        MarketOverviewItem(
          label: 'Market Cap',
          value: data.marketCap,
          percentage: data.marketCapPercentage,
        ),
        MarketOverviewItem(
          label: '24h Volume',
          value: data.volume24h,
          percentage: data.volume24hPercentage,
        ),
        MarketOverviewItem(
          label: 'BTC Dominance',
          value: '${data.btcDominance}%',
        ),
        MarketOverviewItem(
          label: 'Active Coins',
          value: data.activeCoins.toString(),
        ),
      ],
    );
  }
}
