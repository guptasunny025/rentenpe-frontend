import 'package:app_core/presentation/theme/app_theme_extensions.dart';
import 'package:flutter/material.dart';

class RentenPeScaffold extends StatelessWidget {
  const RentenPeScaffold({
    super.key,
    required this.body,
    this.title,
    this.leading,
    this.actionWidgets,
    this.bottomNavigationBar,
  });

  final Widget body;
  final String? title;
  final Widget? leading;
  final List<Widget>? actionWidgets;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme.primaryColor,
      appBar: (title != null || leading != null || actionWidgets != null)
          ? AppBar(
              backgroundColor: context.appTheme.primaryColor,
              title: title != null ? Text(title!) : null,
              leading: leading,
              actions: actionWidgets,
            )
          : null,
      body: SafeArea(child: body),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
