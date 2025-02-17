import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/splash_screen.dart';

import 'package:food_app/presentaion/utiles/app_colors.dart';

import 'package:get/get.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({super.key});
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: FoodApp.navigationKey,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        elevatedButtonTheme: _builElevatedButton(),
        inputDecorationTheme: _builInputDecoretaion(),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
          titleLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.textGrayColor,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }

  InputDecorationTheme _builInputDecoretaion() {
    return InputDecorationTheme(
      fillColor: AppColors.lightBackgroundColor,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
    );
  }

  ElevatedButtonThemeData _builElevatedButton() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
