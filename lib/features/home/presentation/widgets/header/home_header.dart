import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/core/helpers/extension.dart';
import 'package:fintech_app/features/auth/logic/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/app_color.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  // Todo Will remove after Profile screen
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(getIt(), getIt()),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 16.r,
              backgroundColor: AppColors.stoneGray,
              child: Icon(
                Icons.person,
                size: 24.sp,
                color: AppColors.snowWhite,
              ),
            ),
            12.horizontalSpace,
            Text(
              'Hi, User 👋',
              style: context.headlineMedium_18,
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
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
      ),
    );
  }
}
