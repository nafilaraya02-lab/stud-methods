import '../models/schedule_model.dart';

class ScheduleService {
  static List<ScheduleModel> sches = [
    ScheduleModel(
      title: "Lomba LKS",
      description: "Belajar pemahaman materi bab 1-5",
      date: "20-05-2026", status: 'Pending',
    ),
    ScheduleModel(
      title: "Kompetisi Matematika",
      description: "Mengerjakan soal latihan bab Trigonometri",
      date: "30-05-2026", status: 'Pending',
    ),
    ScheduleModel(
      title: "Upgrade skill Bahasa Inggris",
      description: "Menghafal Vocabolary dan berlatiih speaking",
      date: "02-06-2026", status: 'Pending',
    ),
    ScheduleModel(
      title: "Badminton",
      description: "Jam 10",
      date: "04-06-2026", status: 'Pending',
    ),
    ScheduleModel(
      title: "Coding Camp",
      description: "Praktek membuat aplikasi flutter sederhana",
      date: "06-06-2026", status: 'Pending',
    ),
    ScheduleModel(
      title: "Tugas IPAS",
      description: "Membuat rancangan proyek akhir",
      date: "07-06-2026", status: 'Pending',
    ),
    ScheduleModel(
      title: "Basket Club",
      description: "Jam 9",
      date: "18-06-2026", status: 'Pending',
    ),
    ScheduleModel(
      title: "Mengerjakan proyek Informatika",
      description: "Membuat rancangan dan gambaran kasar",
      date: "20-06-2026", status: 'Pending',
    ),
  ];
}
