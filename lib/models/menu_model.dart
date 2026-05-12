import 'package:flutter/cupertino.dart';

class MenuModel {
  final Widget page;
  final IconData icon;
  final String label;
  final Color color;

  MenuModel({
    required this.page,
    required this.icon,
    required this.label,
    required this.color,
  });
}
