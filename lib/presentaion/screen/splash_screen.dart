import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/get_start.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';
import 'package:food_app/presentaion/utiles/asset_path.dart';
import 'package:food_app/presentaion/widget/food_logo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Get.to(() => GetStart());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          FoodLogo(
            imagePath: AssetPath.logoPng,
            child: Container(),
          ),
          Image.asset("assets/food.png"),
        ],
      ),
    );
  }
}
