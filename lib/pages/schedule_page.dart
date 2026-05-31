import 'package:flutter/material.dart';
import 'package:studmethods/models/schedule_model.dart';
import 'package:studmethods/services/schedule_service.dart';
import 'package:studmethods/widgets/schedule_widget.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  void addTask(String title, String description, String date) {
    ScheduleService.sches.add(
      ScheduleModel(
        title: title,
        description: description,
        date: date,
        status: 'Pending',
        isCompleted: false,
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final schedules = ScheduleService.sches;
    final filteredCompleted = schedules.where((element) => element.isCompleted);
    final filteredPending = schedules.where((element) => !element.isCompleted);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              TextEditingController title = TextEditingController();
              TextEditingController desc = TextEditingController();
              TextEditingController date = TextEditingController();
              return AlertDialog(
                title: Text("Add Task"),
                actions: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: title,
                        decoration: InputDecoration(labelText: "Title"),
                      ),
                      TextField(
                        controller: desc,
                        decoration: InputDecoration(labelText: "Description"),
                      ),
                      TextField(
                        controller: date,
                        decoration: InputDecoration(labelText: "Date"),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      addTask(title.text, desc.text, date.text);
                      Navigator.pop(context);
                    },
                    child: Text("Add"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildBox("${filteredCompleted.length}", "Completed Tasks"),
                  buildBox("${filteredPending.length}", "Pending Tasks"),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: schedules.length,
                  itemBuilder: (context, index) {
                    final schedule = schedules[index];
                    return ScheduleWidget(
                      sches: schedule,
                      onTap: () {
                        setState(() {
                          schedule.isCompleted = !schedule.isCompleted;
                          schedule.status = schedule.isCompleted
                              ? "Completed"
                              : "Pending";
                        });
                      },
                    );
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
