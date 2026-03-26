import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: context.appTheme.accentTextColor, width: 1.5),
                ),
                alignment: Alignment.center,
                child: Text(
                  "R",
                  style: context.appTheme.title.bold(context).accentTextColor(context),
                ),
              ),
              const SizedBox(width: 8),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "RENTEN",
                      style: context.appTheme.title.bold(context).copyWith(
                        color: context.appTheme.badgeColor,
                        letterSpacing: 1.2,
                      ),
                    ),
                    TextSpan(
                      text: "PE",
                      style: context.appTheme.title.bold(context).baseTextColor(context).copyWith(
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: context.appTheme.surfaceColorAlt,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on, 
                      color: context.appTheme.baseTextColor, 
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "2 km",
                      style: context.appTheme.label.medium(context).baseTextColor(context),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Icons.notifications,
                    color: context.appTheme.accentTextColor,
                    size: 26,
                  ),
                  Positioned(
                    right: -4,
                    top: -4,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: context.appTheme.badgeColor,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "2",
                        style: context.appTheme.label.secondary(context)
                      ),
                    ),
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
