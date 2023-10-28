import 'package:class9_and_10/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class 9 and 10',
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
