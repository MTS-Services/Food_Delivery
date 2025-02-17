import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/pyment_mathod.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PriceCountContainer extends StatefulWidget {
  const PriceCountContainer({
    super.key,
    required this.priceCount,
  });

  final List<Map<String, dynamic>> priceCount;

  @override
  State<PriceCountContainer> createState() => _PriceCountContainerState();
}

class _PriceCountContainerState extends State<PriceCountContainer> {
  double getTotalPrice() {
    return widget.priceCount.fold(0.0, (sum, item) {
      String priceString = item["price"].toString().replaceAll("\$", "");
      double price = double.tryParse(priceString) ?? 0.0;
      return sum + price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Price: \$${getTotalPrice().toStringAsFixed(2)}",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 20,
                    color: AppColors.whiteColor,
                  ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                foregroundColor: AppColors.primary,
              ),
              onPressed: () {
                if (getTotalPrice() <= 0) {
                  ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                    SnackBar(
                      backgroundColor: AppColors.primary,
                      content: Text(
                        "Pleace add product",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                  );
                } else {
                  Get.to(() => PymentMathod(productPrice: getTotalPrice(),));
                }
              },
              child: const Text(
                "Check Out",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
