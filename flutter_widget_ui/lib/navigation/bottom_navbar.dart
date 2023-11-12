// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  final List<Widget> listNamePage = const [
    Text('Home'),
    Text('Cart'),
    Text('Favorite'),
    Text('User'),
  ];

  int _selectedIndex = 0;

  List<dynamic> menuItems = [
    {
      'icon': 'assets/icons/home_.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/cart_.svg',
      'label': 'Cart',
    },
    {
      'icon': 'assets/icons/favorite.svg',
      'label': 'Favorite',
    },
    {
      'icon': 'assets/icons/profile_.svg',
      'label': 'Home',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Bottom Navbar'),
      ),
      body: Center(
        child: listNamePage[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: List.generate(
          menuItems.length,
          (index) => BottomNavigationBarItem(
            icon: SvgPicture.asset(
              menuItems[index]['icon'],
              color: index == _selectedIndex ? Colors.blue : Colors.black87,
            ),
            label: menuItems[index]['label'],
          ),
        ),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        unselectedItemColor: Colors.black87,
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        onTap: (value) {
          _onItemTapped(value);
        },
      ),
    );
  }
}
