import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/auth/signup_screen.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';
import 'package:food_app/presentaion/utiles/asset_path.dart';
import 'package:food_app/presentaion/widget/coustom_login_frome.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AssetPath.rectanglePng,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  top: 80,
                  child: Image.asset(
                    AssetPath.logoPng,
                    color: AppColors.whiteColor,
                    width: 100,
                  ),
                ),
                Positioned(
                  top: 180,
                  child: Text(
                    "Deliver Favourite Food",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.textGrayColor,
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: CustomLoginFrome(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 200),
            Text(
              "Don’t have an account?",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.SecondaryColor,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                Get.to(() => SingUpScreen());
              },
              child: Text(
                "REGISTER",
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
