import 'package:flutter/material.dart';
import 'package:app_core/app_core.dart';
import 'widgets/home_app_bar_widget.dart';
import 'widgets/user_info_header_widget.dart';
import 'widgets/rent_due_card_widget.dart';
import 'widgets/quick_actions_widget.dart';
import 'widgets/promotional_banners_widget.dart';
import 'widgets/auto_pay_widget.dart';
import 'widgets/recent_activity_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return RentenPeScaffold(
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            HomeAppBarWidget(),
            UserInfoHeaderWidget(),
            RentDueCardWidget(),
            QuickActionsWidget(),
            PromotionalBannersWidget(),
            AutoPayWidget(),
            RecentActivityWidget(),
          ],
        ),
      ),
    );
  }
}
