import 'package:flutter/material.dart';
import 'package:plpdartbootcampproject/screens/repay_loan.dart';
import 'package:plpdartbootcampproject/widgets/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Village Banking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Layout(),
    );
  }
}
