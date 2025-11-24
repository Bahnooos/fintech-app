import 'package:fintech_app/core/theme/app_color.dart';
import 'package:fintech_app/core/theme/app_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.electricBlue,
      ),
      body: Center(
        child: Image.asset(AppImages.masterCardImage),
      ),
    );
  }
}
