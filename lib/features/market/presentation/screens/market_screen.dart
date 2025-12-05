import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:fintech_app/features/market/domain/filter_entity.dart';
import 'package:fintech_app/features/market/presentation/logic/market_cubit.dart';
import 'package:fintech_app/features/market/presentation/widgets/coin_overview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/custom_text_form_field.dart';
import '../widgets/filter_card.dart';

class MarketScreen extends StatelessWidget {
  MarketScreen({super.key});

  final TextEditingController _searchController = TextEditingController();
  late MarketCubit _marketCubit;

  @override
  Widget build(BuildContext context) {
    _marketCubit = context.read<MarketCubit>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: BlocBuilder<MarketCubit, MarketState>(
            builder: (context, state) {
              return Column(
                spacing: 16.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Crypto Market", style: TextStyles.font24PrimaryBold),
                  CustomTextFormField(
                    controller: _searchController,
                    onChanged: (value) {
                      // Handle search logic here
                    },
                    hintText: "Search",
                    onTap: () {},
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/searchIcon.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                      ],
                    ),
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/svg/menu.svg",
                          height: 24.h,
                          width: 24.w,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 4.sp,
                      children: [
                        for (FilterEntity filter in _marketCubit.filters)
                          GestureDetector(
                            onTap: () {
                              _marketCubit.selectFilter(filter);
                            },
                            child: FilterCard(
                              filterEntity: filter,
                              isSelected:
                                  _marketCubit.selectedFilter.filterId ==
                                  filter.filterId,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 8.sp,
                        children: [
                          for (var coin in _marketCubit.coins)
                            GestureDetector(
                              onTap: () {
                                _marketCubit.selectedCoin = coin;
                                Navigator.pushNamed(
                                  context,
                                  Routes.coinDetailsScreen,
                                  arguments: _marketCubit,
                                );
                              },
                              child: CoinOverviewCard(coin: coin),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
