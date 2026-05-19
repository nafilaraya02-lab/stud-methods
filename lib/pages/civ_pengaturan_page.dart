import 'package:flutter/material.dart';
import 'package:studmethods/services/civ_service_pengaturan.dart';
import 'civ_pengaturan_page.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PENGATURAN", style: TextStyle(color: Colors.blueGrey)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade900, Colors.white],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: siv.length,
        itemBuilder: (context, i) => ListTile(
          onTap: () {
            showDetailInfo(context, i);
          },
          title: Text(siv[i].title),

        ),
      ),
    );
  }

  void showDetailInfo(BuildContext context, int i) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Text(
                          siv[i].title,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Icon(siv[i].icon),
                        SizedBox(height: 20),
                        Text(siv[i].subtitle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}