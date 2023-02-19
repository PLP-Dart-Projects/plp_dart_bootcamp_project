import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plpdartbootcampproject/screens/user.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  int _currentScreen = 0;
  List screens = const [
    Text('Dashboard'),
    Text('Notification'),
    User(),
  ];

  void changeScreen(int num) {
    setState(() {
      _currentScreen = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      key: _scaffoldState,
      body: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 60,
        ),
        child: screens[_currentScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        selectedItemColor: AppColors.primary,
        onTap: changeScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.wallet),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.notification),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
