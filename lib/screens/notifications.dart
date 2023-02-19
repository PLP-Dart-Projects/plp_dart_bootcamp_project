import 'package:flutter/material.dart';

import '../widgets/notification_list.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(
          child: NotificationList(),
        ),
      ],
    );
  }
}
