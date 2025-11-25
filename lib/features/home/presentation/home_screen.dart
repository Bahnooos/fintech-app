import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_color.dart';
import '../data/models/balance_model.dart';
import '../data/models/home_data_model.dart';
import '../data/models/market_overview_model.dart';
import '../data/models/top_gainer_model.dart';
import '../data/models/trending_coin_model.dart';
import 'widgets/custom_bottom_nav_bar.dart';
import 'widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for now - Cubit logic will be added later
    final mockData = HomeDataModel(
      balance: BalanceModel(
        currentBalance: 143421.20,
        weeklyProfit: 3345.50,
        weeklyProfitPercentage: 2.35,
      ),
      marketOverview: MarketOverviewModel(
        marketCap: '\$2.1T',
        marketCapPercentage: 2.35,
        volume24h: '\$85.5B',
        volume24hPercentage: 2.35,
        btcDominance: 48.5,
        activeCoins: 19417,
      ),
      trendingCoins: [
        TrendingCoinModel(
          name: 'Bitcoin',
          symbol: 'BTC',
          iconUrl: '🪙',
          price: 1132151,
          percentageChange: 2.35,
        ),
        TrendingCoinModel(
          name: 'Ethereum',
          symbol: 'ETH',
          iconUrl: '💎',
          price: 1132151,
          percentageChange: 2.35,
        ),
      ],
      topGainers: [
        TopGainerModel(
          name: 'Ethereum',
          symbol: 'ETH',
          iconUrl: '💎',
          price: 20788,
          percentageChange: 10.25,
        ),
        TopGainerModel(
          name: 'Binance Coin',
          symbol: 'BNS',
          iconUrl: '🟡',
          price: 20788,
          percentageChange: 11.15,
        ),
      ],
    );
    
    return Scaffold(
      backgroundColor: AppColors.silverWhite,
      body: SafeArea(
        child: HomeScreenBody(data: mockData),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }

}

