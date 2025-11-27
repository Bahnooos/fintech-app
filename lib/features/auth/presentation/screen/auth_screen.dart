import 'package:fintech_app/core/theme/app_images.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18),
          child: Column(
            children: [Image.asset(AppImages.getStartedImage)],
          ),
        ),
      ),
    );
  }
}
