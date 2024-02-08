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
              
            ],
          ),
        ));
  }
}