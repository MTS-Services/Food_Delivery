import 'package:flutter/material.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: GNav(
        backgroundColor: AppColors.primary,
        curve: Curves.linear,
        gap: 8,
        padding: const EdgeInsets.all(12),
        tabBackgroundColor: Colors.white.withOpacity(0.1),
        color: AppColors.whiteColor,
        activeColor: AppColors.whiteColor,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
            iconColor: AppColors.whiteColor,
            iconActiveColor: AppColors.whiteColor,
            textStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.whiteColor),
          ),
          GButton(
            icon: Icons.person,
            text: "Person",
            iconColor: AppColors.whiteColor,
            iconActiveColor: AppColors.whiteColor,
            textStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.whiteColor),
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: "Shopping",
            iconColor: AppColors.whiteColor,
            iconActiveColor: AppColors.whiteColor,
            textStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.whiteColor),
          ),
          GButton(
            icon: Icons.message,
            text: "Message", //
            iconColor: AppColors.whiteColor,
            iconActiveColor: AppColors.whiteColor,
            textStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.whiteColor),
          ),
        ],
      ),
    );
  }
}
