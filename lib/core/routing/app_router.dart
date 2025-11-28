import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/auth/get_started/auth_screen.dart';
import 'package:fintech_app/features/auth/login/presentation/screens/login_screen.dart';
import 'package:fintech_app/features/auth/register/presentation/screens/register_screen.dart';
import 'package:fintech_app/features/home/presentation/home_screen.dart';
import 'package:fintech_app/features/onbaording/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      default:
        return null;
    }
  }
}
