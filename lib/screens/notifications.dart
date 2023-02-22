import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: <Widget>[
          NotificationCard(
            avatar: CircleAvatar(
              backgroundImage: AssetImage('assets/user1.jpg'),
            ),
            message: 'John sent you KES 1000',
          ),
          NotificationCard(
            avatar: CircleAvatar(
              backgroundImage: AssetImage('assets/user2.jpg'),
            ),
            message: 'Sarah sent you KES 1000',
          ),
          NotificationCard(
            avatar: CircleAvatar(
              backgroundImage: AssetImage('assets/user3.jpg'),
            ),
            message: 'James sent you KES 2400',
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final Widget avatar;
  final String message;

  NotificationCard({required this.avatar, required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: avatar,
        title: Text(message),
        trailing: ElevatedButton(
          onPressed: () {
            // Handle button press here
          },
          child: Text('View'),
        ),
      ),
    );
  }
}
