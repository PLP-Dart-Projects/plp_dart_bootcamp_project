import 'package:flutter/material.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';

class PageLayout extends StatelessWidget {
  const PageLayout({
    super.key,
    required this.pageTitle,
    required this.body,
  });
  final String pageTitle;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Container(
          color: AppColors.white,
          child: Column(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: AppColors.white,
                    ),
                    Text(
                      pageTitle,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 17,
                      ),
                    ),
                    const Text('')
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: body,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
