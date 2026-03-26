import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quick Actions",
            style: context.appTheme.title.bold(context).baseTextColor(context),
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionIconItemWidget(icon: Icons.receipt_long, label: "Pay Rent"),
              ActionIconItemWidget(icon: Icons.assignment_turned_in, label: "Agreements"),
              ActionIconItemWidget(icon: Icons.account_balance, label: "Add Bank", badge: "+"),
              ActionIconItemWidget(icon: Icons.headset_mic, label: "Support"),
            ],
          ),
        ],
      ),
    );
  }
}

