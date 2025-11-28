import 'package:fintech_app/core/theme/app_images.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [Center(child: Image.asset(AppImages.bitcoinImage))],
        ),
      ),
    );
  }
}
