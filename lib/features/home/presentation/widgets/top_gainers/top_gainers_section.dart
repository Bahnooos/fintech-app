import 'package:fintech_app/features/home/data/models/coin_model.dart';
import 'package:fintech_app/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/text_styles.dart';
import '../../logic/cubit/home_state.dart';
import 'top_gainer_tile.dart';

class TopGainersSection extends StatelessWidget {
  const TopGainersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Gainers',
            style: TextStyles.font16PrimaryBold,
          ),
          16.verticalSpace,
          BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (previous, current) =>
                current.coinsStatus.isLoading ||
                current.coinsStatus.isSuccess ||
                current.coinsStatus.isError,
            builder: (context, state) {
              switch (state.coinsStatus) {
                case SectionStatus.initial:
                  return const SizedBox.shrink();
                case SectionStatus.loading:
                  return Skeletonizer(
                    enabled: true,
                    ignoreContainers: false,
                    containersColor: Colors.white,
                    effect: const ShimmerEffect(
                      baseColor: Color(0xFFE0E0E0),
                      highlightColor: Color(0xFFF5F5F5),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return TopGainerTile(
                          coinModel: CoinModel.mock(),
                        );
                      },
                    ),
                  );
                case SectionStatus.success:
                  return Skeletonizer(
                    enabled: false,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.coinsList?.length,
                      itemBuilder: (context, index) {
                        return TopGainerTile(
                          coinModel: state.coinsList?[index],
                        );
                      },
                    ),
                  );
                case SectionStatus.error:
                  return Center(
                    child: Text(state.globalError ?? ''),
                  );
              }
            },
          ),
        ],
      ),
    );
  }
}
