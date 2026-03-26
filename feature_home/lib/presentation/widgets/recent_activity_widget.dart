import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class RecentActivityWidget extends StatelessWidget {
  const RecentActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Activity",
                style: context.appTheme.title.bold(context).baseTextColor(context),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                decoration: BoxDecoration(
                  color: context.appTheme.surfaceColorAlt,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  "View All",
                  style: context.appTheme.label.bold(context).baseTextColor(context),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _ActivityItem(
            icon: Icons.check_circle,
            iconColor: context.appTheme.successAltTextColor,
            title: "Rent payment to Skyline Residency",
            date: "11 Mar 2025",
            statusText: " • Success",
            amount: "- ₹18,500",
            amountColor: context.appTheme.baseTextColor,
          ),
          Divider(color: context.appTheme.secondaryColor.withOpacity(0.12), height: 28),
          _ActivityItem(
            icon: Icons.account_balance,
            iconColor: context.appTheme.accentTextColor,
            title: "HDFC Bank added",
            date: "08 Mar 2025",
            statusText: "",
            amount: "+ Bank",
            amountColor: context.appTheme.infoTextColor,
          ),
          Divider(color: context.appTheme.secondaryColor.withOpacity(0.12), height: 28),
          _ActivityItem(
            icon: Icons.description,
            iconColor: context.appTheme.accentTextColor,
            title: "Agreement signed",
            date: "01 Mar 2025",
            statusText: "",
            amount: "View",
            amountColor: context.appTheme.accentTextColor,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _ActivityItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String date;
  final String statusText;
  final String amount;
  final Color amountColor;

  const _ActivityItem({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.date,
    required this.statusText,
    required this.amount,
    required this.amountColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: context.appTheme.surfaceColorAlt,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: iconColor, size: 24),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.appTheme.body.medium(context).baseTextColor(context),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    date,
                    style: context.appTheme.label.regular(context).subduedTextColor(context),
                  ),
                  if (statusText.isNotEmpty)
                    Text(
                      statusText,
                      style: context.appTheme.label.regular(context).subduedTextColor(context),
                    ),
                ],
              ),
            ],
          ),
        ),
        Text(
          amount,
          style: context.appTheme.body.bold(context).copyWith(color: amountColor),
        ),
      ],
    );
  }
}
