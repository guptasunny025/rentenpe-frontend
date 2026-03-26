import 'package:app_core/app_core.dart';
import 'package:feature_profile/presentation/widgets/account_options_widget.dart';
import 'package:feature_profile/presentation/widgets/account_overview_widget.dart';
import 'package:feature_profile/presentation/widgets/gold_member_banner_widget.dart';
import 'package:feature_profile/presentation/widgets/profile_header_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RentenPeScaffold(
      body: ListView(
        children: const [
          ProfileHeaderWidget(),
          AccountOverviewWidget(),
          AccountOptionsWidget(),
          GoldMemberBannerWidget(),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
