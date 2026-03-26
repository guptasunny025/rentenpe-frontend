import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class AccountOverviewWidget extends StatelessWidget {
  const AccountOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appTheme.surfaceColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: context.appTheme.secondaryColor.withOpacity(0.1),
        ),
      ),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Account Overview",
            style: context.appTheme.body.bold(context).baseTextColor(context),
          ),
          Row(
            children: [
              Expanded(
                child: _OverviewItem(
                  label: "Rent Score",
                  value: "650",
                  tag: "Excellent",
                  tagColor: Colors.green,
                ),
              ),
              Container(
                width: 1,
                height: 40,
                color: context.appTheme.secondaryColor.withOpacity(0.1),
              ),
              Expanded(
                child: _OverviewItem(
                  label: "Member Since",
                  value: "Mar 2024",
                  tag: "Gold",
                  tagColor: context.appTheme.accentTextColor,
                ),
              ),
              Container(
                width: 1,
                height: 40,
                color: context.appTheme.secondaryColor.withOpacity(0.1),
              ),
              Expanded(
                child: _OverviewItem(
                  label: "Wallet Balance",
                  value: "₹4,700",
                  showAddButton: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OverviewItem extends StatelessWidget {
  final String label;
  final String value;
  final String? tag;
  final Color? tagColor;
  final bool showAddButton;

  const _OverviewItem({
    required this.label,
    required this.value,
    this.tag,
    this.tagColor,
    this.showAddButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: context.appTheme.label
              .regular(context)
              .subduedTextColor(context),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: context.appTheme.body.bold(context).baseTextColor(context),
        ),
        const SizedBox(height: 4),
        if (tag != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: (tagColor ?? context.appTheme.accentTextColor).withOpacity(
                0.1,
              ),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: (tagColor ?? context.appTheme.accentTextColor)
                    .withOpacity(0.3),
              ),
            ),
            child: Text(
              tag!,
              style: context.appTheme.label
                  .medium(context)
                  .copyWith(
                    color: tagColor ?? context.appTheme.accentTextColor,
                    fontSize: 10,
                  ),
            ),
          ),
        if (showAddButton)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: context.appTheme.accentTextColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.add,
                  color: context.appTheme.accentTextColor,
                  size: 10,
                ),
                Text(
                  "Add Money",
                  style: context.appTheme.label
                      .bold(context)
                      .accentTextColor(context)
                      .copyWith(fontSize: 10),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
