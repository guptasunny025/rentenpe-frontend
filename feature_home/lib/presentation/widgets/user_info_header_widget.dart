import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class UserInfoHeaderWidget extends StatelessWidget {
  const UserInfoHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: context.appTheme.secondaryColor.withOpacity(0.24),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person,
              color: context.appTheme.secondaryColor,
              size: 30,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sunny Gupta",
                style: context.appTheme.title
                    .bold(context)
                    .baseTextColor(context),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(
                    Icons.workspace_premium,
                    color: context.appTheme.accentTextColor,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "Gold Member",
                    style: context.appTheme.label
                        .medium(context)
                        .accentTextColor(context),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
