import 'package:flutter/material.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';

class AppHeader extends StatelessWidget {
  final String title;

  const AppHeader({
    super.key,
    this.title = "Good Morning Emma",
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 30,
                      color: AppColors.white,
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container(
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 30,
                left: 60,
                right: 100,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      // height: 150,
                      child: Text(
                        this.title,
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 28,
                          color: AppColors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
