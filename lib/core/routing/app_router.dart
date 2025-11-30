import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/auth/presentation/screen/auth_screen.dart';
import 'package:fintech_app/features/home/presentation/home_screen.dart';
import 'package:fintech_app/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/dependency_injection.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..fetchAllData(),
            child: const HomeScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
