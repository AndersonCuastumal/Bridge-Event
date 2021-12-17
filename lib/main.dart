import 'package:flutter/material.dart';
// https://medium.com/teamartisans/bottom-navigation-bar-in-flutter-using-getx-a59f274b616c
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprint3/ui/routes/app_pages.dart';
import 'package:sprint3/ui/routes/app_routes.dart';
import 'package:sprint3/ui/themes/app_theme.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}