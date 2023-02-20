import 'package:flutter/material.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';
import 'package:plpdartbootcampproject/widgets/button.dart';
import 'package:plpdartbootcampproject/widgets/page_layout.dart';

class RepayLoan extends StatelessWidget {
  RepayLoan({super.key});
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      pageTitle: "Repay Loan",
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Enter amount',
            style: TextStyle(
              fontSize: 20,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: amountController,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: const InputDecoration(
                hintText: "KES 0.00",
                hintStyle: TextStyle(
                  fontSize: 17,
                ),
                suffixText: 'KES',
                suffixStyle: TextStyle(
                  color: AppColors.primary,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'To',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Repaying KES 1,500,000 loan: Group 1',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          LargeButton(color: AppColors.primary, text: "Pay")
        ],
      ),
    );
  }
}
