import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        spacing: 16,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: context.appTheme.secondaryColor.withOpacity(0.12),
              shape: BoxShape.circle,
              border: Border.all(
                color: context.appTheme.secondaryColor.withOpacity(0.2),
                width: 2,
              ),
            ),
            child: Icon(
              Icons.person,
              color: context.appTheme.secondaryColor,
              size: 50,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sunny Gupta",
                  style: context.appTheme.title
                      .bold(context)
                      .baseTextColor(context)
                      .copyWith(fontSize: 22),
                ),
                const SizedBox(height: 4),
                Text(
                  "guptasunny025@gmail.com",
                  style: context.appTheme.body
                      .regular(context)
                      .subduedTextColor(context),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: context.appTheme.accentTextColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: context.appTheme.accentTextColor.withOpacity(0.3),
                    ),
                  ),
                  child: Row(
                    spacing: 4,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: context.appTheme.accentTextColor,
                        size: 14,
                      ),
                      Text(
                        "Verified",
                        style: context.appTheme.label
                            .medium(context)
                            .accentTextColor(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
