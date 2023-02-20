import 'package:flutter/material.dart';
import 'package:plpdartbootcampproject/widgets/page_layout.dart';

class RepayLoad extends StatelessWidget {
  const RepayLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      pageTitle: "Repay Loan",
      body: Center(
        child: Text('Repay Loan'),
      ),
    );
  }
}
