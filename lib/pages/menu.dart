import 'package:flutter/material.dart';
import 'package:studmethods/models/menu_model.dart';
import 'package:studmethods/pages/raya_homepage.dart';
import 'package:studmethods/pages/schedule_page.dart';
import 'package:studmethods/pages/settings.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;

  Map<int, MenuModel> menu = {
    0: MenuModel(
      page: RayaHomepage(),
      icon: Icons.home,
      label: "Home",
      color: Colors.white70,
    ),
    1: MenuModel(
      page: SchedulePage(),
      icon: Icons.access_time_filled,
      label: "Schedule",
      color: Colors.white70,
    ),
    2: MenuModel(
      page: Settings(),
      icon: Icons.settings,
      label: "Settings",
      color: Colors.white70,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        elevation: 10,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: menu.entries.map(
          (ray) => BottomNavigationBarItem(
            icon: Icon(ray.value.icon, color: Colors.black),
            activeIcon: Icon(ray.value.icon, color: Colors.black),
            label: ray.value.label,
            backgroundColor: ray.value.color,
          ),
        )
          .toList(),
      ),
      body: menu[selectedIndex]!.page,
    );
  }
}
