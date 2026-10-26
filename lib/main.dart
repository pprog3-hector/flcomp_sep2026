import 'package:flcomp_sep2026/routes/app_routes.dart';
import 'package:flcomp_sep2026/themes/app_themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.initialRoute,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
    );
  }
}