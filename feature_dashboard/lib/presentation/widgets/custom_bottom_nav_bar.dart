import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(bottom: 8, top: 12),
        decoration: BoxDecoration(
          color: context.appTheme.surfaceColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          border: Border(
            top: BorderSide(
              color: context.appTheme.secondaryColor.withOpacity(0.12),
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomNavItemWidget(
              icon: Icons.home_filled,
              label: "Home",
              index: 0,
              currentIndex: currentIndex,
              onTap: onTabSelected,
            ),
            CustomNavItemWidget(
              icon: Icons.feed_outlined,
              label: "Infotainment",
              index: 1,
              currentIndex: currentIndex,
              onTap: onTabSelected,
            ),
            CustomNavItemWidget(
              icon: Icons.chat_bubble_outline,
              label: "Chat",
              index: 2,
              currentIndex: currentIndex,
              onTap: onTabSelected,
            ),
            CustomNavItemWidget(
              icon: Icons.explore,
              label: "R-Journey",
              index: 3,
              currentIndex: currentIndex,
              onTap: onTabSelected,
            ),
            CustomNavItemWidget(
              icon: Icons.person_outline,
              label: "Profile",
              index: 4,
              currentIndex: currentIndex,
              onTap: onTabSelected,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNavItemWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavItemWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = currentIndex == index;

    Widget customIcon = Icon(
      icon,
      size: 26,
      color: context.appTheme.secondaryColor,
    );

    Widget child = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        customIcon,
        const SizedBox(height: 4),
        FittedBox(
          child: Text(
            label,
            maxLines: 1,
            style: isSelected
                ? context.appTheme.label.bold(context).baseTextColor(context)
                : context.appTheme.label
                      .regular(context)
                      .subduedTextColor(context),
          ),
        ),
      ],
    );

    if (isSelected) {
      final goldenGradient = LinearGradient(
        colors: [
          context.appTheme.gradientLight,
          context.appTheme.gradientMain,
          context.appTheme.gradientDark,
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
      onTap: () => onTap(index),
      child: SizedBox(width: 70, child: child),
    );
  }
}
