import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';
import 'package:plpdartbootcampproject/widgets/app_header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppHeader(
          title: "Good Evening Mark!",
        ),
        Text("Balance Widget"),
        Text("Callout Widget"),
      ],
    );
  }
}
