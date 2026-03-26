import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class AutoPayWidget extends StatefulWidget {
  const AutoPayWidget({super.key});

  @override
  State<AutoPayWidget> createState() => _AutoPayWidgetState();
}

class _AutoPayWidgetState extends State<AutoPayWidget> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: context.appTheme.surfaceColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.appTheme.secondaryColor.withOpacity(0.12),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: context.appTheme.baseTextColor,
                size: 32,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rent Due",
                    style: context.appTheme.label
                        .regular(context)
                        .subduedTextColor(context),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: context.appTheme.accentTextColor,
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "Apr 11, 2025",
                        style: context.appTheme.title
                            .bold(context)
                            .baseTextColor(context)
                            .copyWith(letterSpacing: 0.5),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "• Auto-pay is OFF",
                    style: context.appTheme.label
                        .regular(context)
                        .subduedTextColor(context),
                  ),
                ],
              ),
            ],
          ),
          Switch(
            value: isOn,
            onChanged: (val) {
              setState(() {
                isOn = val;
              });
            },
            activeColor: context.appTheme.accentTextColor,
            activeTrackColor: context.appTheme.accentTextColor.withOpacity(0.5),
            inactiveThumbColor: context.appTheme.secondaryColor,
            inactiveTrackColor: context.appTheme.surfaceColorAlt,
          ),
        ],
      ),
    );
  }
}
