import 'package:capuccino/components/product_cta_section.dart';
import 'package:capuccino/components/product_description_section.dart';
import 'package:capuccino/components/product_info_section.dart';
import 'package:capuccino/components/product_size_list_section.dart';
import 'package:capuccino/models/product_size.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key, required this.title});
  final String title;

  final List<ProductSize> sizes = [
    ProductSize(size: "S", price: 3.99),
    ProductSize(size: "M", price: 4.53, active: true),
    ProductSize(size: "L", price: 5.99),
  ];

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  // Method to handle when a size is selected
  void _handleSizeSelected(ProductSize selectedSize) {
    setState(() {
      for (var otherSize in widget.sizes) {
        otherSize.active = false;
      }
      selectedSize.active = true;
    });
  }

  double getPrice() {
    return widget.sizes.firstWhere((size) => size.active).price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        leading: Image.asset("assets/images/arrow-left.jpg"),
        title: Text(widget.title,
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Image.asset("assets/images/Rectangle 1706.jpg",
                        width: 600, height: 240, fit: BoxFit.cover),
                    const ProductInfoSection(
                        productName: "Cappuccino",
                        topping: "with Chocolate",
                        rating: 4.8,
                        reviewCount: 230),
                    const SizedBox(height: 15),
                    const Divider(
                      color: Color(0xFFCCCCCC),
                      thickness: 1,
                    ),
                    const ProductDescriptionSection(
                        description:
                            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk. The foamy milk texture, achieved through steaming and frothing, tops off this classic Italian drink, imparting a creamy richness and a satisfying mouthfeel."),
                    const SizedBox(height: 15),
                    ProductSizeListSection(
                        sizes: widget.sizes,
                        onSizeSelected: _handleSizeSelected),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ProductCTASection(price: getPrice()),
          )
        ],
      ),
    );
  }
}
