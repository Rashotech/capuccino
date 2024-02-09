import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProductDescriptionSection extends StatefulWidget {
  const ProductDescriptionSection({super.key, required this.description});
  final String description;

  @override
  State<ProductDescriptionSection> createState() =>
      _ProductDescriptionSectionState();
}

class _ProductDescriptionSectionState extends State<ProductDescriptionSection> {
  bool isReadmore = false;

  void toggle() {
    setState(() {
      isReadmore = !isReadmore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Align(
          alignment: Alignment.topLeft,
          child: Text("Description",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 10),
        buildText(widget.description),
      ],
    );
  }

  Widget buildText(String description) {
    const maxLength = 125;
    final isDescriptionLong = description.length > maxLength;
    final readText = isReadmore ? ' Read less' : ' Read more';
    final displayText = (!isReadmore && isDescriptionLong)
        ? '${description.substring(0, maxLength)}...'
        : description;
    return Row(
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: displayText,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                if (isDescriptionLong)
                  TextSpan(
                    text: readText,
                    recognizer: TapGestureRecognizer()..onTap = () => toggle(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC67C4E),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
