import 'package:flutter/material.dart';
import 'package:food_app/presentaion/utiles/app_colors.dart';

import 'package:food_app/presentaion/widget/product_count.dart';

class ProductOrderScreen extends StatefulWidget {
  const ProductOrderScreen({
    super.key,
    required this.products,
    required this.addToCart,
  });

  final List<Map<String, dynamic>> products;
  final List<Map<String, dynamic>> addToCart;

  @override
  State<ProductOrderScreen> createState() => _ProductOrderScreenState();
}

class _ProductOrderScreenState extends State<ProductOrderScreen> {
  List<Map<String, dynamic>> filteredList = [];
  List<Map<String, dynamic>> cardAdd = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    filteredList = widget.products;
    cardAdd = widget.addToCart;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back))
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "Check Your \nFavourite Order",
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onChanged: updateSearchQuery,
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
                                icon: const Icon(
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
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    filteredList.isEmpty
                        ? Center(
                            child: Text(
                              "Not available",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          )
                        : _bulListView()
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: PriceCountContainer(
              priceCount: cardAdd,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bulListView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cardAdd.length,
      itemBuilder: (context, index) {
        final item = cardAdd[index];
        return Card(
          color: AppColors.whiteColor,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(item['image'], width: 80, height: 80),
            title: Text(item["name"]),
            subtitle: Text(
              "${item['price'].toString()}",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 20,
                  ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
                color: AppColors.primary,
              ),
              onPressed: () {
                ItemDelete(index);
              },
            ),
          ),
        );
      },
    );
  }

  void updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
      filteredList = widget.products
          .where((item) =>
              item['name'].toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    });
  }

  void ItemDelete(int index) {
    setState(() {
      cardAdd.removeAt(index);
    });
  }
}
