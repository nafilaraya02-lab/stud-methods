import 'package:flutter/material.dart';
import 'package:studmethods/models/competitions_model.dart';

class CompDetail extends StatelessWidget {
  final CompetitionsModel comp;
  const CompDetail({super.key, required this.comp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(comp.title)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(comp.image),
            ),
            SizedBox(height: 20),
            Text(
              comp.title,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(comp.description),
            SizedBox(height: 15),
            Text(
              "Deadline: ${comp.deadline}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Daftar Sekarang"))
          ],
        ),
      ),
    );
  }
}
