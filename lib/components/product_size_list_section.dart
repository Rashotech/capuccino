import 'package:capuccino/components/product_size_button.dart';
import 'package:capuccino/models/product_size.dart';
import 'package:flutter/material.dart';

class ProductSizeListSection extends StatelessWidget {
  const ProductSizeListSection(
      {super.key, required this.sizes, required this.onSizeSelected});

  final List<ProductSize> sizes;
  final void Function(ProductSize) onSizeSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Size",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: sizes
              .map((size) => ProductSizeButton(
                    size: size.size,
                    active: size.active,
                    onPressed: () => onSizeSelected(size),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
