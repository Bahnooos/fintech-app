import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/auth/face_id/presentation/screens/login/face_id_login_screen.dart';
import 'package:fintech_app/features/auth/face_id/presentation/screens/register/face_id_register_screen.dart';
import 'package:fintech_app/features/auth/fingerprint/presentation/screens/login/fingerprint_login_screen.dart';
import 'package:fintech_app/features/auth/fingerprint/presentation/screens/login/verified_login_screen.dart';
import 'package:fintech_app/features/auth/fingerprint/presentation/screens/register/fingerprint_register_screen.dart';
import 'package:fintech_app/features/auth/fingerprint/presentation/screens/register/verified_register_screen.dart';
import 'package:fintech_app/features/auth/get_started/auth_screen.dart';
import 'package:fintech_app/features/auth/login/presentation/screens/login_screen.dart';
import 'package:fintech_app/features/auth/register/presentation/screens/register_screen.dart';
import 'package:fintech_app/features/home/presentation/home_screen.dart';
import 'package:fintech_app/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:fintech_app/features/onbaording/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/dependency_injection.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //! Onboarding Screen
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      //! Home Screen
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..fetchAllData(),
            child: const HomeScreen(),
          ),
        );

      //! Auth Screen
      case Routes.authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      //! Login Screen
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.faceIdLoginScreen:
        return MaterialPageRoute(
          builder: (_) => const FaceIdLoginScreen(),
        );
      case Routes.fingerprintLoginScreen:
        return MaterialPageRoute(
          builder: (_) => const FingerprintLoginScreen(),
        );
      case Routes.verifiedLoginScreen:
        return MaterialPageRoute(builder: (_) => const VerifiedLoginScreen());
      // !  Register Screen
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.faceIdRegisterScreen:
        return MaterialPageRoute(
          builder: (_) => const FaceIdRegisterScreen(),
        );
      case Routes.fingerprintRegisterScreen:
        return MaterialPageRoute(
          builder: (_) => const FingerprintRegisterScreen(),
        );
      case Routes.verifiedRegisterScreen:
        return MaterialPageRoute(
          builder: (_) => const VerifiedRegisterScreen(),
        );

      default:
        return null;
    }
  }
}
