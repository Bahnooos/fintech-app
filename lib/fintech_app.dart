import 'package:fintech_app/core/theme/app_images.dart';
import 'package:fintech_app/core/theme/app_theme.dart';
import 'package:fintech_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class FintechApp extends StatelessWidget {
  const FintechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("Hello App", style: TextStyles.font18SnowWhiteBold),
              const SizedBox(height: 50),
              Center(child: Image.asset(AppImages.applePayImage)),
            ],
          ),
        ),
      ),
    );
  }
}
