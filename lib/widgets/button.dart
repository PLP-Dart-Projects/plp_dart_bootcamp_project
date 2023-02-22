// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';

class Button extends StatelessWidget {
  Button({
    required this.color,
    required this.text,
    required this.size,
    this.leftIcon,
    this.rightIcon,
    super.key,
  });

  final Color color;
  final String text;
  final double size;
  Widget? leftIcon;
  Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leftIcon ?? const Text(''),
            Text(
              text,
              style: const TextStyle(
                color: AppColors.white,
              ),
            ),
            rightIcon ?? const Text(''),
          ],
        ),
      ),
    );
  }
}

class SmallButton extends Button {
  SmallButton({
    super.key,
    required Color color,
    required String text,
    Widget? leftIcon,
    Widget? rightIcon,
  }) : super(
          color: color,
          text: text,
          size: 20,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
        );
}

class MediumButton extends Button {
  MediumButton({
    super.key,
    required Color color,
    required String text,
    Widget? leftIcon,
    Widget? rightIcon,
  }) : super(
          color: color,
          text: text,
          size: 40,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
        );
}

class LargeButton extends Button {
  LargeButton({
    super.key,
    required Color color,
    required String text,
  }) : super(
          color: color,
          text: text,
          size: 80,
        );
}
