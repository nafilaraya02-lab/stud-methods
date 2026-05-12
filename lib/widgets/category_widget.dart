import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String image;

  const CategoryWidget({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
            Image.asset(image, fit: BoxFit.cover, width: 65, height: 75),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
