import 'package:flutter/material.dart';
import 'package:studmethods/models/subject_model.dart';
import 'package:studmethods/services/subject_service.dart';
import 'package:url_launcher/url_launcher.dart';

class SubjectDetail extends StatelessWidget {
  final SubjectModel subject;
  const SubjectDetail({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  subject.image,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Tonton Video",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: subject.sub.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.play_arrow_sharp),
                    title: Text(subject.sub[index].bab),
                    trailing: ElevatedButton(
                      onPressed: () {
                        launchUrl(Uri.parse(subject.sub[index].youtube));
                      },
                      child: Text("Tonton Penjelasan Lengkap Di YT"),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
