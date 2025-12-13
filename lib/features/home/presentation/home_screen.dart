import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/features/profile/logic/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../profile/presentation/screens/profile_screen.dart';
import 'widgets/custom_bottom_nav_bar.dart';
import 'widgets/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // ✅ Create screens lazily
  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      const HomeScreenBody(),
      const Center(child: Text('Market Screen')),
      const Center(child: Text('Portfolio Screen')),
      BlocProvider.value(
        value: getIt<UserCubit>()..getCurrentUser(),
        child: const SettingsScreen(),
      ),
    ];
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
