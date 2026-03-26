import 'package:app_core/app_core.dart';
import 'package:app_core/presentation/theme/app_theme_extensions.dart';
import 'package:feature_home/presentation/home_screen.dart';
import 'package:feature_profile/presentation/profile_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  Widget _getScreen(int index, BuildContext context) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return Center(
          child: Text(
            "Infotainment",
            style: context.appTheme.title.baseTextColor(context),
          ),
        );
      case 2:
        return Center(
          child: Text(
            "Chat",
            style: context.appTheme.title.baseTextColor(context),
          ),
        );
      case 3:
        return Center(
          child: Text(
            "R-Journey",
            style: context.appTheme.title.baseTextColor(context),
          ),
        );
      case 4:
        return const ProfileScreen();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return RentenPeScaffold(
      body: _getScreen(_currentIndex, context),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTabSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

