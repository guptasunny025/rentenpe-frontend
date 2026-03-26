import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class GoldMemberBannerWidget extends StatelessWidget {
  const GoldMemberBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final goldGradient = LinearGradient(
      colors: [
        context.appTheme.gradientLight.withOpacity(0.8),
        context.appTheme.gradientMain,
        context.appTheme.gradientDark,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: goldGradient,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: context.appTheme.gradientMain.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        spacing: 16,
        children: [
          Row(
            spacing: 16,
            children: [
              Icon(
                Icons.workspace_premium,
                color: context.appTheme.primaryColor,
                size: 40,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gold Member",
                      style: context.appTheme.title
                          .bold(context)
                          .primary(context),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "You're enjoying premium benefits",
                      style: context.appTheme.label
                          .medium(context)
                          .primary(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: context.appTheme.primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "View Benefits",
                style: context.appTheme.label.bold(context).secondary(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
