import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class RentDueCardWidget extends StatelessWidget {
  const RentDueCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final goldenGradient = LinearGradient(
      colors: [
        context.appTheme.gradientLight,
        context.appTheme.gradientMain,
        context.appTheme.gradientDark,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: goldenGradient,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: context.appTheme.accentTextColor.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: context.appTheme.secondaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "RENT DUE",
                  style: context.appTheme.label
                      .primary(context)
                      .copyWith(letterSpacing: 1),
                ),
              ),
              Icon(
                Icons.explore_outlined,
                color: context.appTheme.primaryColor.withOpacity(0.6),
                size: 30,
              ),
            ],
          ),
          Text(
            "Due on 11 April",
            style: context.appTheme.body
                .primary(context)
                .copyWith(
                  color: context.appTheme.primaryColor.withOpacity(0.87),
                ),
          ),
          Text(
            "₹18,500",
            style: context.appTheme.headline
                .primary(context)
                .copyWith(fontSize: 24),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: context.appTheme.warningColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              "Pending",
              style: context.appTheme.label.secondary(context),
            ),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "1 Apr",
                style: context.appTheme.label
                    .primary(context)
                    .copyWith(
                      color: context.appTheme.primaryColor.withOpacity(0.87),
                    ),
              ),
              Text(
                "12 days left",
                style: context.appTheme.label.primary(context),
              ),
              Text(
                "30 Apr",
                style: context.appTheme.label
                    .primary(context)
                    .copyWith(
                      color: context.appTheme.primaryColor.withOpacity(0.87),
                    ),
              ),
            ],
          ),
          LinearProgressIndicator(
            value: 0.4,
            backgroundColor: context.appTheme.primaryColor.withOpacity(0.12),
            valueColor: AlwaysStoppedAnimation<Color>(
              context.appTheme.primaryColor.withOpacity(0.87),
            ),
            minHeight: 6,
            borderRadius: BorderRadius.circular(4),
          ),

          Container(
            margin: EdgeInsets.only(top: 12),
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: context.appTheme.inverseTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pay Rent Now",
                    style: context.appTheme.title
                        .bold(context)
                        .accentTextColor(context),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: context.appTheme.accentTextColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.chevron_right,
                      color: context.appTheme.inverseTextColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
