import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:plpdartbootcampproject/screens/dashboard.dart';
import 'package:plpdartbootcampproject/screens/notifications.dart';
import 'package:plpdartbootcampproject/screens/user.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';

class Layout extends StatefulWidget {
  String? title;

  Layout({
    super.key,
    this.title,
  });

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  int _currentScreen = 0;
  List screens = const [
    DashboardScreen(),
    Notifications(),
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
      // appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(),
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
      drawer: const Drawer(
        child: Text("Hello, Drawer"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
