import 'package:flutter/material.dart';
import 'package:studmethods/services/schedule_service.dart';
import 'package:studmethods/widgets/schedule_widget.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    final schedules = ScheduleService.sches;
    final filteredCompleted = schedules.where(
      (element) => element.status == "Completed",
    );
    final filteredPending = schedules.where(
      (element) => element.status == "Pending",
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildBox("6", "Completed Tasks"),
                  buildBox("2", "Pending Tasks"),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: schedules.length,
                  itemBuilder: (context, index) {
                    final schedule = schedules[index];
                    return ScheduleWidget(sches: schedule);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBox(String number, String text) {
    return Container(
      width: 140,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(text),
        ],
      ),
    );
  }
}
