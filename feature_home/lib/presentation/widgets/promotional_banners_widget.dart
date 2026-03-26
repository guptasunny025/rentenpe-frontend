import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class PromotionalBannersWidget extends StatelessWidget {
  const PromotionalBannersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            child: _BannerCard(
              title: "R-WISH",
              subtitle: "Make a wish for\nyour dream home",
              buttonText: "Send Wish",
              buttonIcon: Icons.arrow_forward,
              isGoldButton: true,
              iconGraphic: Icons.auto_awesome,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: _BannerCard(
              title: "GULLAK",
              subtitle: "Save in your\ndigital piggy bank",
              buttonText: "₹4,700",
              isGoldButton: false,
              iconGraphic: Icons.savings,
            ),
          ),
        ],
      ),
    );
  }
}

class _BannerCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final IconData? buttonIcon;
  final bool isGoldButton;
  final IconData iconGraphic;

  const _BannerCard({
    required this.title,
    required this.subtitle,
    required this.buttonText,
    this.buttonIcon,
    required this.isGoldButton,
    required this.iconGraphic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appTheme.surfaceColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: context.appTheme.secondaryColor.withOpacity(0.12), width: 1),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            context.appTheme.surfaceColor,
            isGoldButton ? context.appTheme.gradientDark.withOpacity(0.2) : context.appTheme.surfaceColorAlt,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.appTheme.body.bold(context).baseTextColor(context).copyWith(
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: context.appTheme.label.regular(context).subduedTextColor(context).copyWith(
              fontSize: 10,
              height: 1.2,
            ),
          ),
          const Spacer(),
          Center(
            child: Icon(
              iconGraphic,
              color: context.appTheme.accentTextColor,
              size: 40,
            ),
          ),
          const Spacer(),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: isGoldButton ? context.appTheme.accentTextColor : Colors.transparent,
                border: isGoldButton ? null : Border.all(color: context.appTheme.accentTextColor),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    buttonText,
                    style: context.appTheme.label.bold(context).copyWith(
                      color: isGoldButton ? context.appTheme.primaryColor : context.appTheme.accentTextColor,
                    ),
                  ),
                  if (buttonIcon != null) ...[
                    const SizedBox(width: 4),
                    Icon(
                      buttonIcon,
                      color: isGoldButton ? context.appTheme.primaryColor : context.appTheme.accentTextColor,
                      size: 14,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
