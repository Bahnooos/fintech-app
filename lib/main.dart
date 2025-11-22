import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/fintech_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  initGetIt();
  runApp(
    const FintechApp(),
  );
}
