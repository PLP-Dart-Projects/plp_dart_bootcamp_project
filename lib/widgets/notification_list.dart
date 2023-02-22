import 'package:flutter/material.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, index) {
          return Container(
            padding: const EdgeInsets.only(
              bottom: 10,
              left: 15,
              right: 15,
            ),
            margin: const EdgeInsets.only(
              bottom: 20,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: AppColors.border,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage('assets/picture.jpeg'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Group 1',
                        style: TextStyle(
                          color: AppColors.textDefault,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'This is an example of a notification mess...',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('2 hours ago'),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.primary,
                ),
              ],
            ),
          );
        });
  }
}
