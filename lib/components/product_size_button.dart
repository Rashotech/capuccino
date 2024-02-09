import 'package:flutter/material.dart';

class ProductSizeButton extends StatelessWidget {
  final String size;
  final bool active;
  final VoidCallback onPressed;

  const ProductSizeButton({
    super.key,
    required this.size,
    required this.active,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 45, vertical: 15)),
        side: MaterialStateProperty.all(
          BorderSide(
            width: 2.0,
            color: active ? const Color(0xFFC67C4E) : const Color(0xFFEEEEEE),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          active ? const Color(0xFFFFF4ee) : Colors.white,
        ),
      ),
      onPressed: () => onPressed(),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 16.0,
          color: active ? const Color(0xFFC67C4E) : Colors.black,
        ),
      ),
    );
  }
}
