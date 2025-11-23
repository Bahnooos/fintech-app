import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());


      default:
        return null;
    }
  }
}
