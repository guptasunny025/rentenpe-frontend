import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class AccountOptionsWidget extends StatelessWidget {
  const AccountOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Account Options",
            style: context.appTheme.body
                .bold(context)
                .baseTextColor(context),
          ),
          const SizedBox(height: 12),
          _OptionItem(
            icon: Icons.person_outline,
            title: "Profile",
            subtitle: "Personal details & KYC",
          ),
          _OptionItem(
            icon: Icons.settings_outlined,
            title: "Settings",
            subtitle: "Security, notifications & privacy",
          ),
          _OptionItem(
            icon: Icons.home_work_outlined,
            title: "My Tenancies",
            subtitle: "View your rented properties",
          ),
          _OptionItem(
            icon: Icons.account_balance_wallet_outlined,
            title: "Bank Accounts",
            subtitle: "Manage linked bank accounts",
          ),
          _OptionItem(
            icon: Icons.history,
            title: "Payment History",
            subtitle: "All rent payments & receipts",
          ),
          _OptionItem(
            icon: Icons.share_outlined,
            title: "Refer & Earn",
            subtitle: "Invite friends & get rewards",
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: context.appTheme.accentTextColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Earn ₹500",
                style: context.appTheme.label
                    .bold(context)
                    .accentTextColor(context),
              ),
            ),
          ),
          _OptionItem(
            icon: Icons.swap_horiz_outlined,
            title: "Switch Account",
            subtitle: "Manage multiple profiles",
          ),
          _OptionItem(
            icon: Icons.help_outline,
            title: "Help & Support",
            subtitle: "FAQs, raise a ticket",
          ),
          _OptionItem(
            icon: Icons.logout,
            title: "Logout",
            subtitle: "Sign out from RentenPe",
            isDestructive: true,
          ),
        ],
      ),
    );
  }
}

class _OptionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final bool isDestructive;

  const _OptionItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.appTheme.surfaceColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.appTheme.secondaryColor.withOpacity(0.05),
        ),
      ),
      child: Row(
        children: [
          ActionIconItemWidget(
            icon: icon,
            label: "",
            showLabel: false,
            size: 48,
            iconSize: 24,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.appTheme.body
                      .bold(context)
                      .copyWith(
                        color: isDestructive
                            ? context.appTheme.errorAltTextColor
                            : context.appTheme.baseTextColor,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: context.appTheme.label
                      .regular(context)
                      .subduedTextColor(context),
                ),
              ],
            ),
          ),
          if (trailing != null) trailing!,
          const SizedBox(width: 8),
          Icon(
            Icons.chevron_right,
            color: context.appTheme.secondaryColor.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}
