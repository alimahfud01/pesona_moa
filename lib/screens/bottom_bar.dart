import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:pesona_moa/screens/food_screen.dart';
import 'package:pesona_moa/screens/place_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const PlaceScreen(),
    const FoodScreen(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0XFF526480),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_map_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_map_filled),
              label: "Tempat Wisata"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_food_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_food_filled),
              label: "Makanan Moa"),
        ],
      ),
    );
  }
}
