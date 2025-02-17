import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/bottom_nav_bar.dart';
import 'package:food_app/presentaion/screen/product_view_screen.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';
import 'package:food_app/presentaion/utiles/asset_path.dart';
import 'package:food_app/presentaion/widget/CategoryItemName.dart';
import 'package:food_app/presentaion/widget/procuce_banner.dart';
import 'package:food_app/presentaion/widget/product_card.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Map<String, dynamic>> myList = [
    {
      'name': 'Zinger Burger',
      'image': AssetPath.iscrimePng,
      'price': '\$10.0',
    },
    {
      'name': 'Cheese Burger',
      'image': AssetPath.iscrimePng1,
      'price': '\$15.0',
    },
    {
      'name': 'Chicken Wrap',
      'image': AssetPath.iscrimePng2,
      'price': '\$20.0',
    },
    {
      'name': 'Veggie Burger',
      'image': AssetPath.iscrimePng3,
      'price': '\$25.0',
    },
    {
      'name': 'Spicy Fries',
      'image': AssetPath.iscrimePng4,
      'price': '\$30.0',
    },
    {
      'name': 'Onion Rings',
      'image': AssetPath.iscrimePng5,
      'price': '\$35.0',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Text(
                "Find Your \nFavourite Food",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search for Food',
                        filled: true,
                        fillColor: AppColors.lightBackgroundColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.filter_list,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_active_rounded,
                      size: 40,
                      color: AppColors.primary,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25),
              ProductBenner(),
              SizedBox(
                height: 10,
              ),
              CetagoryItem(
                name: 'Popular Menu',
                title: 'View More',
                onTep: () => Get.to(() => ProductViewScreen()),
              ),
              ProductCard(
                products: myList.take(2).toList(),
                Height: 200,
              ),
              SizedBox(
                height: 10,
              ),
              CetagoryItem(
                name: 'Deserts',
                title: "View More",
              ),
              ProductCard(
                products: myList,
                Height: 200,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
