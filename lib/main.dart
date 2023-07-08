import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/core/di/service_locator.dart';
import 'package:news_app_clean_architecture/features/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const MainApp());
}
