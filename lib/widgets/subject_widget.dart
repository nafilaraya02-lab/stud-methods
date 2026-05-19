import 'package:flutter/material.dart';
import 'package:studmethods/models/subject_model.dart';

class SubjectWidget extends StatelessWidget {
  final SubjectModel subjects;
  final VoidCallback onTap;
  const SubjectWidget({super.key, required this.subjects, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
              child: Image.asset(subjects.image, fit: BoxFit.contain),
            ),
            SizedBox(height: 3),
            Text(subjects.title, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
