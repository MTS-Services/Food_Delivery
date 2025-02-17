import 'package:flutter/material.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';
import 'package:food_app/presentaion/utiles/asset_path.dart';
import 'package:food_app/presentaion/widget/custom_signup_frome.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      AssetPath.rectanglePng,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
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
                    top: 230,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.textGrayColor,
                            blurRadius: 2,
                            spreadRadius: 0.2,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: CustomSignUpScreen(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 160),
            Text(
              "Already have an account?",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.SecondaryColor,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Signup",
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
