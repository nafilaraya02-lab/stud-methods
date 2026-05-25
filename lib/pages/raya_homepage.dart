import 'package:flutter/material.dart';
import 'package:studmethods/pages/competitions_detail.dart';
import 'package:studmethods/pages/edit_profile.dart';
import 'package:studmethods/pages/subject_detail.dart';
import 'package:studmethods/services/competition_service.dart';
import 'package:studmethods/services/subject_service.dart';
import 'package:studmethods/widgets/competitions_widget.dart';
import 'package:studmethods/widgets/subject_widget.dart';

class RayaHomepage extends StatefulWidget {
  const RayaHomepage({super.key});

  @override
  State<RayaHomepage> createState() => _RayaHomepageState();
}

class _RayaHomepageState extends State<RayaHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "STUD!METHODs",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/ray.jpg"),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User Account",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "user@gmail.com",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                    },
                    icon: Icon(Icons.edit, color: Colors.white, size: 30),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Subjects Category",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: subjects.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SubjectWidget(
                      subjects: subjects[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SubjectDetail(subjects: subjects[index]),
                          ),
                        ).then((value) {
                          setState(() {});
                        });
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: comps.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (BuildContext context, index) {
                return CompetitionsWidget(
                  comps: comps[index],
                  onTap: () {            Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CompetitionsDetail(comps: comps[index]),
                      ),
                    ).then((value) {
                      setState(() {});
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
