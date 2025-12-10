import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/auth/logic/cubit/auth_cubit.dart';
import 'package:fintech_app/features/auth/presentation/auth_screen.dart';
import 'package:fintech_app/features/auth/presentation/screens/face_id/screens/login/face_id_login_screen.dart';
import 'package:fintech_app/features/auth/presentation/screens/face_id/screens/register/face_id_register_screen.dart';
import 'package:fintech_app/features/auth/presentation/screens/fingerprint/screens/login/fingerprint_login_screen.dart';
import 'package:fintech_app/features/auth/presentation/screens/fingerprint/screens/login/verified_login_screen.dart';
import 'package:fintech_app/features/auth/presentation/screens/fingerprint/screens/register/fingerprint_register_screen.dart';
import 'package:fintech_app/features/auth/presentation/screens/fingerprint/screens/register/verified_register_screen.dart';
import 'package:fintech_app/features/auth/presentation/screens/login/screens/login_screen.dart';
import 'package:fintech_app/features/auth/presentation/screens/register/screens/register_screen.dart';
import 'package:fintech_app/features/home/presentation/home_screen.dart';
import 'package:fintech_app/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:fintech_app/features/onbaording/presentation/screens/onboarding_screen.dart';
import 'package:fintech_app/features/payment/presentation/cubit/payment_cubit.dart';
import 'package:fintech_app/features/payment/presentation/screens/buy_crypto.dart';
import 'package:fintech_app/features/payment/presentation/screens/card_payment_screen.dart';
import 'package:fintech_app/features/payment/presentation/screens/payment_method_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/dependency_injection.dart';

class AppRouter {
  final PaymentCubit _paymentCubit = getIt<PaymentCubit>();
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //! Onboarding Screen
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      //! Home Screen
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<HomeCubit>()..fetchAllData(),
            child: const HomeScreen(),
          ),
        );

      //! Auth Flow
      case Routes.authFlow:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<AuthCubit>(),
            child: const AuthFlowRoot(),
          ),
        );


      case Routes.buyCoins:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _paymentCubit,
            child: const BuyCryptoScreen(),
          ),
        );
      case Routes.paymentDetails:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _paymentCubit,
            child: PaymentMethodScreen(
              amount: args?['amount'] ?? '',
              crypto: args?['crypto'] ?? '',
              cryptoAmount: args?['cryptoAmount'] ?? '',
              exchangeFee: args?['exchangeFee'] ?? 0.0,
            ),
          ),
        );

      case Routes.cardPayment:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _paymentCubit,
            child: CardPaymentScreen(
              amount: args?['amount'] ?? '',
              crypto: args?['crypto'] ?? '',
              cryptoAmount: args?['cryptoAmount'] ?? '',
              exchangeFee: args?['exchangeFee'] ?? 0.0,
            ),
          ),
        );

      default:
        return null;
    }
  }

  void dispose() {
    _paymentCubit.close();
  }
}

class AuthFlowRoot extends StatelessWidget {
  const AuthFlowRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: Routes.authScreen,
      onGenerateRoute: _authOnGenerateRoute,
    );
  }

  Route _authOnGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.authScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

      case Routes.faceIdLoginScreen:
        return MaterialPageRoute(
          builder: (_) => const FaceIdLoginScreen(),
        );

      case Routes.fingerprintLoginScreen:
        return MaterialPageRoute(
          builder: (_) => const FingerprintLoginScreen(),
        );

      case Routes.verifiedLoginScreen:
        return MaterialPageRoute(
          builder: (_) => const VerifiedLoginScreen(),
        );

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
        return MaterialPageRoute(
          builder: (_) => const AuthScreen(),
        );
    }
  }
}
