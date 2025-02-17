import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/get_start_two.dart';
import 'package:food_app/presentaion/utiles/asset_path.dart';
import 'package:food_app/presentaion/widget/food_logo.dart';
import 'package:get/get.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                    AssetPath.foodImage,
                    width: 500,
                    height: 400,
                  ),
                ),
              ],
            ),
            Text(
              "Track your  Comfort Food here",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Here You Can find a chef or dish for every \ntaste and color. Enjoy!",
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
                  Get.to(() => GetStartTwo());
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
