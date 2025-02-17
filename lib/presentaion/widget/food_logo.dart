import 'package:flutter/material.dart';

class FoodLogo extends StatelessWidget {
  const FoodLogo({
    super.key,
    this.child, 
    this.imagePath = "",
  });

  final Widget? child; 
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(imagePath),
        ),
        child ?? SizedBox.shrink(), 
      ],
    );
  }
}


