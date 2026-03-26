import 'package:app_core/presentation/theme/app_theme_extensions.dart';
import 'package:flutter/material.dart';

class ActionIconItemWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? badge;
  final bool showLabel;
  final double size;
  final double iconSize;

  const ActionIconItemWidget({
    super.key,
    required this.icon,
    required this.label,
    this.badge,
    this.showLabel = true,
    this.size = 70,
    this.iconSize = 32,
  });

  @override
  Widget build(BuildContext context) {
    Widget container = Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: context.appTheme.surfaceColorAlt,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.appTheme.accentTextColor.withOpacity(0.3),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: context.appTheme.accentTextColor.withOpacity(0.08),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Icon(icon, color: context.appTheme.accentTextColor, size: iconSize),
          if (badge != null)
            Positioned(
              right: size * 0.17,
              bottom: size * 0.17,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: context.appTheme.baseTextColor,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  badge!,
                  style: context.appTheme.label.primary(context),
                ),
              ),
            ),
        ],
      ),
    );

    if (!showLabel) return container;

    return Column(
      children: [
        container,
        const SizedBox(height: 8),
        Text(
          label,
          style: context.appTheme.label.medium(context).baseTextColor(context),
        ),
      ],
    );
  }
}
