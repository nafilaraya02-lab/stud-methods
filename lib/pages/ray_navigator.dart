import 'package:flutter/material.dart';
import 'package:studmethods/pages/jadwal.dart';
import 'package:studmethods/pages/raya_homepage.dart';
import 'package:studmethods/pages/schedule_page.dart';
import 'package:studmethods/pages/settings.dart';

class RayNavigator extends StatefulWidget {
  const RayNavigator({super.key});

  @override
  State<RayNavigator> createState() => _RayNavigatorState();
}

class _RayNavigatorState extends State<RayNavigator> {
  int selectedIndex = 0;

  Map<int, List<dynamic>> pages2 = {
    0: [RayaHomepage(), "Home", Icons.home],
    1: [SchedulePage(), "To-Do", Icons.library_add],
    2: [Settings(), "Settings", Icons.settings],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: BottomNavigationBar(
          elevation: 5,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: pages2.entries.map((r) {
            return BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(r.value[2], color: Colors.grey, size: 32),
              label: r.value[1],
              activeIcon: Icon(
                r.value[2],
                color: Colors.black,
                size: 42,
              ),
            );
          }).toList(),
        ),
      ),
      body: pages2[selectedIndex]![0],
    );
  }
}
