import 'package:flutter/material.dart';

class LoginWithGoogleAndFacebook extends StatelessWidget {
  const LoginWithGoogleAndFacebook({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {},
      child: Image.asset(
        image,
        height: 40,
        width: 40,
      ),
    );
  }
}
