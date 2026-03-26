import 'package:app_core/presentation/rentenpe_scaffold.dart';
import 'package:feature_home/presentation/home_screen.dart';
import 'package:feature_profile/presentation/profile_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    Center(
      child: Text(
        "Infotainment",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
    Center(
      child: Text("Chat", style: TextStyle(color: Colors.white, fontSize: 18)),
    ),
    Center(
      child: Text(
        "R-Journey",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return RentenPeScaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(bottom: 8, top: 12),
        decoration: const BoxDecoration(
          color: Color(0xFF141414),
          border: Border(top: BorderSide(color: Colors.white12, width: 0.5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(icon: Icons.home_filled, label: "Home", index: 0),
            _buildNavItem(
              icon: Icons.feed_outlined,
              label: "Infotainment",
              index: 1,
            ),
            _buildNavItem(
              icon: Icons.chat_bubble_outline,
              label: "Chat",
              index: 2,
            ),
            _buildNavItemIcon(
              customIcon: _buildRJourneyIcon,
              label: "R-Journey",
              index: 3,
            ),
            _buildNavItem(
              icon: Icons.person_outline,
              label: "Account",
              index: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRJourneyIcon(bool isSelected) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 2.0),
      child: Text(
        "R",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    return _buildNavItemIcon(
      customIcon: (isSelected) => Icon(icon, size: 26, color: Colors.white),
      label: label,
      index: index,
    );
  }

  Widget _buildNavItemIcon({
    required Widget Function(bool) customIcon,
    required String label,
    required int index,
  }) {
    final isSelected = _currentIndex == index;
    final color = isSelected ? Colors.white : Colors.grey.shade500;

    Widget child = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        customIcon(isSelected),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 11,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ],
    );

    if (isSelected) {
      const goldenGradient = LinearGradient(
        colors: [
          Color(0xFFFFE8A3), // light shine
          Color(0xFFE6B85C), // main gold
          Color(0xFFB8963A), // dark gold
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

      child = ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => goldenGradient.createShader(bounds),
        child: child,
      );
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() => _currentIndex = index);
      },
      child: SizedBox(width: 70, child: child),
    );
  }
}
