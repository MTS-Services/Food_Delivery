import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/auth/login_screen.dart';
import 'package:food_app/presentaion/utiles/asset_path.dart';
import 'package:food_app/presentaion/widget/food_logo.dart';
import 'package:get/get.dart';

class GetStartTwo extends StatefulWidget {
  const GetStartTwo({super.key});

  @override
  State<GetStartTwo> createState() => _GetStartTwoState();
}

class _GetStartTwoState extends State<GetStartTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                FoodLogo(
                  imagePath: AssetPath.illustartion,
                ),
                Center(
                  child: Image.asset(
                    AssetPath.pizzaImage,
                    width: 500,
                    height: 400,
                  ),
                ),
              ],
            ),
            Text(
              "Foodie is Where Your Comfort Food Resides",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enjoy a fast and smooth food delivery at \nyour doorstep",
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                child: Text("Next"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
