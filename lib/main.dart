import 'package:fintech_app/core/cache/cache_helper.dart';
import 'package:fintech_app/core/cache/hive_adapters.dart';
import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/core/routing/app_router.dart';
import 'package:fintech_app/fintech_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // IMPORTANT: Register Hive type adapters FIRST (before opening box)
  HiveAdapters.registerAdapters();

  // Then initialize Hive cache (opens the box)
  await CacheHelper.init();

  // Initialize dependency injection
  await initGetIt();

  // Uncomment when Firebase is needed
  // await Firebase.initializeApp();

  runApp(
    FintechApp(appRouter: AppRouter()),
  );
}
