import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/features/app/routes.dart';
import 'package:news_app_clean_architecture/features/app/themes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.themeData,
      routerConfig: AppRouter().generateRoute(),
    );
  }
}
