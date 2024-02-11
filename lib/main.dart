import 'package:capuccino/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   
  ThemeData _buildTheme() {
    var baseTheme = ThemeData();

    return baseTheme.copyWith(
      textTheme: GoogleFonts.soraTextTheme(baseTheme.textTheme),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capuccino App',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(),
      home: DetailsScreen(title: "Detail"),
    );
  }
}