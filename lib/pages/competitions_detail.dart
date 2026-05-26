import 'package:flutter/material.dart';
import 'package:studmethods/models/competitions_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../services/competition_service.dart';

class CompetitionsDetail extends StatefulWidget {
  final CompetitionsModel comps;
  const CompetitionsDetail({super.key, required this.comps});

  @override
  State<CompetitionsDetail> createState() => _CompetitionsDetailState();
}

class _CompetitionsDetailState extends State<CompetitionsDetail> {
  Future<void>? _launched;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.comps.title)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(widget.comps.image),
            ),
            SizedBox(height: 20),
            Text(
              widget.comps.title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(widget.comps.description),
            SizedBox(height: 15),
            Text(
              "Deadline: ${widget.comps.deadline}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                launchInWebView(
                  Uri(scheme: 'https', host: 'cbt.pusatprestasi.id'),
                );
                launchInWebView(
                  Uri(scheme: 'https', host: "linktr.ee/ISCOFFICIAL"),
                );
                launchInWebView(Uri(scheme: 'https', host: 'bit.ly/4wencxl'));
              },
              child: Text(
                "Daftar Sekarang",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
