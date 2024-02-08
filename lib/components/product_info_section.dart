import 'package:capuccino/components/product_content.dart';
import 'package:flutter/material.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection(
      {super.key,
      required this.productName,
      required this.topping,
      required this.rating,
      required this.reviewCount});
  final String productName;
  final String topping;
  final double rating;
  final int reviewCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(productName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        Text(topping,
            style: const TextStyle(color: Color(0xFF9B9B9B), fontSize: 16)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Row(children: [
                  const Icon(Icons.star, color: Color(0xFFFBBE21)),
                  const SizedBox(width: 5),
                  Text(rating.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22)),
                  const SizedBox(width: 3),
                  Text("(${reviewCount.toString()})",
                      style: const TextStyle(fontSize: 16))
                ])
              ],
            ),
            Row(
              children: [
                ProductContent(image: Image.asset("assets/images/bean.png")),
                const SizedBox(width: 10),
                ProductContent(image: Image.asset("assets/images/milk.png")),
              ],
            ),
          ],
        )
      ],
    );
  }
}
