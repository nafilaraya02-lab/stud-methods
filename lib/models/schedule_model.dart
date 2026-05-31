class ScheduleModel {
  final String title;
  final String description;
  final String date;
  String status;
  bool isCompleted;

  ScheduleModel({
    required this.title,
    required this.description,
    required this.date,
    required this.status,
    this.isCompleted = false,
  });
}
