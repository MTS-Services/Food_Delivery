import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';
import 'package:food_app/presentaion/utiles/asset_path.dart';

class ProductBenner extends StatefulWidget {
  const ProductBenner({
    super.key,
  });

  @override
  State<ProductBenner> createState() => _ProductBennerState();
}

class _ProductBennerState extends State<ProductBenner> {
  late String currentImage;
  final List<String> MyList = [
    AssetPath.iscrimePng,
    AssetPath.iscrimePng1,
    AssetPath.iscrimePng2,
    AssetPath.iscrimePng3,
    AssetPath.iscrimePng4,
    AssetPath.iscrimePng5,
  ];

  int index = 0;
  @override
  void initState() {
    super.initState();
    currentImage = MyList[index];
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        index = (index + 1) % MyList.length;
        currentImage = MyList[index];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Special Deal For \nDecember",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.whiteColor,
                    foregroundColor: AppColors.primary),
                onPressed: () {},
                child: Text("Buy Now"),
              ),
            ],
          ),
          Image.asset(currentImage)
        ],
      ),
    );
  }
}
