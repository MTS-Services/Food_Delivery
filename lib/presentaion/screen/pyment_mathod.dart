import 'package:flutter/material.dart';
import 'package:food_app/presentaion/screen/auth/seccess_screen.dart';
import 'package:food_app/presentaion/utiles/asset_path.dart';
import 'package:food_app/presentaion/widget/CategoryItemName.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PymentMathod extends StatefulWidget {
  const PymentMathod({super.key, required this.productPrice});
  final double productPrice;
  @override
  State<PymentMathod> createState() => _PymentMathodState();
}

class _PymentMathodState extends State<PymentMathod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
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
            SizedBox(
              height: 15,
            ),
            Text(
              "Confirm Order",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 20,
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    _buildSectionTitle("Deliver to", "Edit"),
                    SizedBox(
                      height: 15,
                    ),
                    _buildInfoCard(
                      wi: 20,
                      icon: Icons.location_on,
                      title: 'Manchester, Kentucky 39495',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    _buildSectionTitle("Payment Method", "Edit"),
                    SizedBox(
                      height: 15,
                    ),
                    _buildInfoCard(
                      wi: 60,
                      image: AssetPath.paypalPng,
                      title: '2121 6352 8465 ******',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            builpaymentCard(context)
          ],
        ),
      ),
    );
  }

  Widget builpaymentCard(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.amber.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CetagoryItem(
                  name: 'Subtotal',
                  title: " \$${widget.productPrice}",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 20,
                ),
                CetagoryItem(
                  name: 'Delivery',
                  title: "\$2.00",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 20,
                ),
                CetagoryItem(
                  name: 'Total',
                  title: "\$${widget.productPrice + 2}",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => SuccessScreen());
            },
            child: Text("Order Confirm"),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title, String action) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          action,
          style: const TextStyle(fontSize: 16, color: Colors.pink),
        ),
      ],
    );
  }

  Widget _buildInfoCard(
      {IconData? icon, String? image, required String title, double? wi}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amber.shade100,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          if (icon != null)
            Icon(icon, color: Colors.black, size: 24)
          else if (image != null)
            Image.asset(
              image,
              width: 24,
              height: 24,
            ),
          SizedBox(width: wi),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
