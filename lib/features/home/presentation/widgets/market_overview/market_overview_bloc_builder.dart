import 'package:fintech_app/features/home/data/models/global_data_response.dart';
import 'package:fintech_app/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../logic/cubit/home_state.dart';
import 'market_overview_grid.dart';

class MarketOverviewBlocBuilder extends StatelessWidget {
  const MarketOverviewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current.globalStatus.isLoading ||
          current.globalStatus.isSuccess ||
          current.globalStatus.isError,
      builder: (context, state) {
        switch (state.globalStatus) {
          case SectionStatus.initial:
          case SectionStatus.loading:
            return Skeletonizer(
              enabled: true,
              ignoreContainers: false,
              // 👇 This MUST be White.
              // White Card on cloudWhite Background = Visible Card.
              containersColor: Colors.white,

              effect: const ShimmerEffect(
                baseColor: Color(0xFFE0E0E0),
                highlightColor: Color(0xFFF5F5F5),
              ),
              child: MarketOverviewGrid(
                globalMarketData: GlobalMarketData.mock(),
              ),
            );

          case SectionStatus.success:
            return Skeletonizer(
              enabled: false,
              child: MarketOverviewGrid(
                globalMarketData: state.globalData ?? GlobalMarketData.mock(),
              ),
            );
          case SectionStatus.error:
            return Center(
              child: Text(state.globalError ?? ''),
            );
        }
      },
    );
  }
}
