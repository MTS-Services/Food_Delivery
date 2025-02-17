import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/food_order_screen.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductCardView extends StatefulWidget {
  const ProductCardView({
    super.key,
    required this.products,
    this.crossAxisCount = 2,
    this.childAspectRatio = 0.98,
    this.mainAxisSpacing = 10,
    this.crossAxisSpacing = 10,
  });

  final List<Map<String, dynamic>> products;
  final int crossAxisCount;
  final double childAspectRatio;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  @override
  State<ProductCardView> createState() => _ProductCardViewState();
}

class _ProductCardViewState extends State<ProductCardView> {
  final List<Map<String, dynamic>> itemAdd = [];

  void addToCard(Map<String, dynamic> addCard) {
    setState(() {
      itemAdd.add(addCard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(8.0),
      itemCount: widget.products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.crossAxisCount,
        childAspectRatio: widget.childAspectRatio,
        mainAxisSpacing: widget.mainAxisSpacing,
        crossAxisSpacing: widget.crossAxisSpacing,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            addToCard(widget.products[index]);
            Get.to(() => ProductOrderScreen(
                  products: widget.products,
                  addToCart: itemAdd,
                ));
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.products[index]['image'],
                    height: 95,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  widget.products[index]['name'],
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4),
                Text(
                  widget.products[index]['price'],
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16,
                        color: AppColors.primary,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
