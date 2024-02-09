import 'package:capuccino/components/product_description_section.dart';
import 'package:capuccino/components/product_info_section.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset("assets/images/arrow-left.jpg"),
          title: Text(title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Image.asset(
                'assets/images/Heart.jpg',
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Image.asset("assets/images/Rectangle 1706.jpg",
                  width: 600, height: 240, fit: BoxFit.cover),
              const ProductInfoSection(productName: "Cappuccino", topping: "with Chocolate", rating: 4.8, reviewCount: 230),
              const SizedBox(height: 10), 
              const Divider(
                color: Color(0xFFCCCCCC),
                thickness: 1,
              ),
              const ProductDescriptionSection(description: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk. The foamy milk texture, achieved through steaming and frothing, tops off this classic Italian drink, imparting a creamy richness and a satisfying mouthfeel."),
            ],
          ),
        ));
  }
}