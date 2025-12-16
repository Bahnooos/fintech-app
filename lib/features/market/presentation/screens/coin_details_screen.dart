import 'package:fintech_app/features/market/presentation/logic/market_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/text_styles.dart';

class CoinDetailsScreen extends StatefulWidget {
  const CoinDetailsScreen({super.key});

  @override
  State<CoinDetailsScreen> createState() => _CoinDetailsScreenState();
}

class _CoinDetailsScreenState extends State<CoinDetailsScreen> {
  late MarketCubit _marketCubit;

  @override
  Widget build(BuildContext context) {
    _marketCubit = context.read<MarketCubit>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16.h,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_outlined, size: 24.sp),
                    padding: EdgeInsetsGeometry.zero,
                  ),
                  Text("Coin Details", style: TextStyles.font24PrimaryBold),
                  SizedBox(width: 48.w),
                ],
              ),
              Row(
                spacing: 12.sp,
                children: [
                  Container(
                    width: 52.sp,
                    height: 52.sp,
                    decoration: BoxDecoration(
                      color: AppColors.snowWhite,
                      borderRadius: BorderRadius.circular(40.sp),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(6.sp),
                      child: Image.network(
                        _marketCubit.selectedCoin!.coinImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    _marketCubit.selectedCoin!.coinName,
                    style: TextStyles.font18DeepForestBold,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Statics",
                style: TextStyles.font18OnboardingBlacktSemiBold,
              ),
              staticsRow(
                "Current Price",
                _marketCubit.selectedCoin!.marketCapRank.toString(),
              ),
              divider(),
              staticsRow(
                "Market Cap",
                _marketCubit.selectedCoin!.marketCapRank.toStringAsFixed(0),
              ),
              divider(),
              staticsRow(
                "Volume 24h",
                _marketCubit.selectedCoin!.marketCapRank.toStringAsFixed(0),
              ),
              divider(),
              staticsRow(
                "Available Supply",
                _marketCubit.selectedCoin!.marketCapRank.toStringAsFixed(0),
              ),
              divider(),
              staticsRow(
                "Max Supply",
                _marketCubit.selectedCoin!.marketCapRank.toStringAsFixed(0),
              ),
              SizedBox(height: 22.h),
              Text(
                "About Bitcoin",
                style: TextStyles.font18OnboardingBlacktSemiBold,
              ),
              // SizedBox(height: 22.h),
              Text(
                "dsfasdfasdfasdasdfasdfasdfasdfasdaffdfadfadsfadsfa;",
                style: TextStyles.font16SmokeGrayRegular,
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget staticsRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.font12BlackRegular,
        ),

        Text(
          '$value\$',
          style: TextStyles.font14LatoMedium,
        ),
      ],
    );
  }

  Widget divider() {
    return Container(
      height: 1.h,
      color: AppColors.lightGray,
      width: double.infinity,
    );
  }
}
