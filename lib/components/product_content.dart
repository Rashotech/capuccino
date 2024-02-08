import 'package:flutter/material.dart';

class ProductContent extends StatelessWidget {
  const ProductContent({super.key, required this.image});
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 246, 246, 246),
        borderRadius: BorderRadius.circular(15),
      ),
      child: image,
    );
  }
}