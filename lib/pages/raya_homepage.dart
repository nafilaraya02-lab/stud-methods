import 'package:flutter/material.dart';
import 'package:studmethods/pages/edit_profile.dart';
import 'package:studmethods/widgets/category_widget.dart';

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
        child: Padding(
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
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "user@gmail.com",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      },
                      icon: Icon(Icons.edit, color: Colors.black, size: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryWidget(image: "assets/matem.png"),
                    CategoryWidget(image: "assets/bahasaindonesia.png"),
                    CategoryWidget(image: "assets/ipa.png"),
                    CategoryWidget(image: "assets/mat.jpg"),
                    CategoryWidget(image: "assets/math.webp"),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      CategoryWidget(image: "assets/olim.png"),
                      CategoryWidget(image: "assets/olim2.jpeg"),
                      CategoryWidget(image: "assets/olim3.jpg"),
                      CategoryWidget(image: "assets/olim5.jpg"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
