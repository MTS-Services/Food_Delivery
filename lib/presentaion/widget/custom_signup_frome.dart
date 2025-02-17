import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/auth/resister_screen.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';
import 'package:food_app/presentaion/utiles/asset_path.dart';
import 'package:food_app/presentaion/widget/login_with_google_and_facebook.dart';

class CustomSignUpScreen extends StatefulWidget {
  const CustomSignUpScreen({
    super.key,
  });

  @override
  State<CustomSignUpScreen> createState() => _CustomSignUpScreenState();
}

class _CustomSignUpScreenState extends State<CustomSignUpScreen> {
  final TextEditingController _emailETController = TextEditingController();
  final TextEditingController _passwordETController = TextEditingController();
  final TextEditingController _nemeETController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Form(
        key: _globalKey,
        child: Column(
          children: [
            Text(
              "Signup",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _nemeETController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: AppColors.textGrayColor,
                  size: 25,
                ),
                hintText: "Name",
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _emailETController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: AppColors.textGrayColor,
                  size: 25,
                ),
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _passwordETController,
              obscureText: isVisible,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: AppColors.textGrayColor,
                  size: 25,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    isVisible = !isVisible;
                    setState(() {});
                  },
                  icon: isVisible
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
                hintText: "Password",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ));
                },
                child: Text("Create Account"),
              ),
            ),
            Text(
              "or",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginWithGoogleAndFacebook(
                  image: AssetPath.goolgePng,
                ),
                SizedBox(
                  width: 15,
                ),
                LoginWithGoogleAndFacebook(
                  image: AssetPath.facebookPng,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailETController.dispose();
    _passwordETController.dispose();
    _nemeETController.dispose();
  }
}
