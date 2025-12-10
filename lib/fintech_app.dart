import 'package:fintech_app/core/routing/app_router.dart';
import 'package:fintech_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FintechApp extends StatelessWidget {
  const FintechApp({
    super.key,
    required this.appRouter,
    required this.initialRoute,
    this.initialRouteArguments,
  });
  final AppRouter appRouter;
  final String initialRoute;
  final Object? initialRouteArguments;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        initialRoute: initialRoute,
        onGenerateRoute: (settings) {
          // If this is the initial route and we have arguments, use them
          if (settings.name == initialRoute && initialRouteArguments != null) {
            return appRouter.onGenerateRoute(
              RouteSettings(
                name: settings.name,
                arguments: initialRouteArguments,
              ),
            );
          }
          return appRouter.onGenerateRoute(settings);
        },
      ),
    );
  }
}
