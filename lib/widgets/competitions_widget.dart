import 'package:flutter/material.dart';

class CompetitionsWidget extends StatelessWidget {
  final String image;

  const CompetitionsWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, fit: BoxFit.contain, width: 100, height: 100),
        ],
      ),
    );
  }
}
