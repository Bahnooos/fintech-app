import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/core/routing/app_router.dart';
import 'package:fintech_app/fintech_app.dart';
import 'package:fintech_app/firebase_options.dart';
import 'package:fintech_app/my_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initGetIt();
  runApp(
    FintechApp(
      appRouter: AppRouter(),
    ),
  );
}
