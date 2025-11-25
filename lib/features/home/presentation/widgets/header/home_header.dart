import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/app_color.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.stoneGray,
            child: Icon(Icons.person, size: 24.sp, color: AppColors.snowWhite),
          ),
          SizedBox(width: 12.w),
          Text(
            'Hi, Ahmed 👋',
            style: TextStyles.font18DarkerBlackBold,
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: AppColors.cloudWhite,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: SvgPicture.asset(
              'assets/svg/notificationIcon.svg',
              width: 24.w,
              height: 24.h,
            ),
          ),
        ],
      ),
    );
  }
}
