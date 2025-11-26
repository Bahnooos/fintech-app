import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/text_styles.dart';
import '../../../data/models/top_gainer_model.dart';
import 'top_gainer_tile.dart';

class TopGainersSection extends StatelessWidget {
  final List<TopGainerModel> gainers;

  const TopGainersSection({
    super.key,
    required this.gainers,
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: gainers.length,
            itemBuilder: (context, index) {
              return TopGainerTile(coin: gainers[index]);
            },
          ),
        ],
      ),
    );
  }
}
