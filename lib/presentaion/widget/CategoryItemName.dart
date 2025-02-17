import 'package:flutter/material.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';

class CetagoryItem extends StatelessWidget {
  const CetagoryItem({
    super.key,
    required this.name,
    this.title,
    this.onTep,
    this.style,
  });
  final String name;
  final String? title;
  final VoidCallback? onTep;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name, style: style),
        GestureDetector(
          onTap: onTep,
          child: Text(
            title ?? " ",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14,
                  color: AppColors.textGrayColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ],
    );
  }
}
