import 'package:studmethods/models/subject_model2.dart';

class SubjectModel {
  final String image;
  final String title;
  final String description;

  List<SubjectModel2> sub;

  SubjectModel({
    required this.image,
    required this.title,
    required this.description,
    required this.sub,
  });
}
