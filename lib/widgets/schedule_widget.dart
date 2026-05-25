import 'package:flutter/material.dart';
import 'package:studmethods/models/schedule_model.dart';

class ScheduleWidget extends StatelessWidget {
  final ScheduleModel sches;
  const ScheduleWidget({super.key, required this.sches});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sches.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(sches.description, style: TextStyle(fontSize: 12)),
              SizedBox(height: 10),
              Align(alignment: Alignment.bottomRight, child: Text(sches.date)),
            ],
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              "Completed",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
