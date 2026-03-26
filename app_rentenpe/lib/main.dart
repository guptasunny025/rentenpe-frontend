import 'package:app_core/app_core.dart';
import 'package:feature_dashboard/presentation/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RentenPeApp());
}

class RentenPeApp extends StatelessWidget {
  const RentenPeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RentenPe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE6B85C),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        extensions: const [
          ThemeConfigExtension(
            inverseTextColor: Colors.black,
            baseTextColor: Colors.white,
            subduedTextColor: Colors.white70,
            accentTextColor: Color(0xFFE6B85C),
            successAltTextColor: Colors.green,
            errorAltTextColor: Colors.redAccent,
            disabledTextColor: Colors.white38,
            infoTextColor: Colors.blueAccent,
            lightTextColor: Colors.white24,
            fontWeightBlack: FontWeight.w900,
            fontWeightBold: FontWeight.bold,
            fontWeightRegular: FontWeight.normal,
            fontWeightMedium: FontWeight.w500,
            fontWeightLight: FontWeight.w300,
            headline: TextStyle(fontSize: 24, letterSpacing: 0.5),
            title: TextStyle(fontSize: 18, letterSpacing: 0.2),
            body: TextStyle(fontSize: 14),
            label: TextStyle(fontSize: 12),
            primaryColor: Colors.black,
            secondaryColor: Colors.white,
            surfaceColor: Color(0xFF141414),
            surfaceColorAlt: Color(0xFF1E1E1E),
            warningColor: Colors.orange,
            badgeColor: Colors.redAccent,
            gradientLight: Color(0xFFFFE8A3),
            gradientMain: Color(0xFFE6B85C),
            gradientDark: Color(0xFFB8963A),
          ),
        ],
      ),
      home: const DashboardScreen(),
    );
  }
}
