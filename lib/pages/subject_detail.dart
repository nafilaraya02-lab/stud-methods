import 'package:flutter/material.dart';
import 'package:studmethods/models/subject_model.dart';

class SubjectDetail extends StatelessWidget {
  final SubjectModel subjects;
  const SubjectDetail({super.key, required this.subjects});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subjects.title)),
      body: Column(
        children: [Image.asset(subjects.pointer), Text(subjects.description)],
      ),
    );
  }
}
