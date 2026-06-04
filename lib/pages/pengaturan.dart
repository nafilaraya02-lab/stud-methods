import 'package:flutter/material.dart';
import 'package:studmethods/services/civ_service_pengaturan.dart';
class Pengaturan extends StatefulWidget {
  const Pengaturan({super.key});

  @override
  State<Pengaturan> createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
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
        itemCount: rbn.length,
        itemBuilder: (context, i) => ListTile(
          onTap: () {
            ShowDetail(context, i);
          },
          title: Text(rbn[i].title),
          subtitle: Text(rbn[i].description),
        ),
      ),
    );
  }

  void ShowDetail(BuildContext context, int i) {
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
                  height: 290,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Text(
                          rbn[i].title,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(rbn[i].description),
                        SizedBox(height: 10),
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