import 'package:studmethods/models/subject_model.dart';
import 'package:studmethods/models/subject_model2.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchInWebView(Uri url) async {
  if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
    throw Exception('Could not launch $url');
  }
}

List<SubjectModel> subjects = [
  SubjectModel(
    image: "assets/math.webp",
    title: "Math",
    description: "ALJABAR DAN LOGIKA MATEMATIKA",
    sub: [
      SubjectModel2(
        bab: "1.logika & logaritma",
        youtube:
            "https://youtube.com/playlist?list=PLovW1TU0Q47yQBTNK35zb7Wbiry6SY9R3&si=0mj3dJNIlOCbjgMQ",
      ),
      SubjectModel2(
        bab: "2.persamaan & pertidaksamaan linier",
        youtube:
            "https://youtube.com/playlist?list=PLovW1TU0Q47x9oIBDFrOoTRtH3kGgqJo8&si=GL4CXwh6Q_99c6aT",
      ),
      SubjectModel2(
        bab: "3.program  linier",
        youtube: "https://youtu.be/whUI9R8O4lc?si=zwyQhPrVGRsP1qML",
      ),
    ],
  ),
  SubjectModel(
    image: "assets/ipa.png",
    title: "IPas",
    description: "MAKHLUK HIDUP DAN LINGKUNGANNYA",
    sub: [
      SubjectModel2(
        bab: "1.ciri ciri makhluk hidup",
        youtube: "https://youtu.be/sg0IhDLgeEk?si=FJ_Rs26NcTiLlvs_",
      ),
      SubjectModel2(
        bab: "2.ekosistem",
        youtube: "https://youtu.be/IVm9sgRVp-0?si=gi_PD5bZu2YhH1Iw",
      ),
      SubjectModel2(
        bab: "3.interaksi sosial",
        youtube: "https://youtu.be/FswphR-rzwU?si=CoZ97CU19LBXOpfd",
      ),
    ],
  ),
  SubjectModel(
    image: "assets/bahasaindonesia.png",
    title: "Bindo",
    description: "MEMAHAMI MACAM TEKS",
    sub: [
      SubjectModel2(
        bab: "1.teks laporan hasil observasi (LHO)",
        youtube: "https://youtu.be/t-utIU_UAiI?si=fm2RxeKlkRABphb7",
      ),
      SubjectModel2(
        bab: "2. teks prosedur",
        youtube: "https://youtu.be/9-xwjf6jY4A?si=v5LOlu7G8weaez6_",
      ),
      SubjectModel2(
        bab: "3.teks negosiasi",
        youtube: "https://youtu.be/USq3blXFupA?si=e3Fvd82ORmEiNtNV",
      ),
    ],
  ),
  SubjectModel(
    image: "assets/bahasainggris.jpg",
    title: "Bing",
    description: "Dasar & komunikasi sehari hari",
    sub: [
      SubjectModel2(
        bab: "1.introducing yourself and others",
        youtube: "https://youtu.be/IQDPx8FFexI?si=KnLJWipuVR6EE7bJ",
      ),
      SubjectModel2(
        bab: "2.Experresing intention",
        youtube: "https://youtu.be/JUQYibDUOWE?si=lxzfpj7a0l--ihY3",
      ),
    ],
  ),
  SubjectModel(
    image: "assets/math.webp",
    title: "Infor",
    description: "BERPIKIR KOMPUTASION(Computation thinkking)",
    sub: [
      SubjectModel2(
        bab: "dekomposisi, pengenalan pola, abstraksi, algoritma",
        youtube: "https://youtu.be/K1SIIqRYf9w?si=LteWtFfVKOXYHFAc",
      ),
    ],
  ),
  SubjectModel(
    image: "assets/math.webp",
    title: "P.P",
    description: "PANCASILA",
    sub: [
      SubjectModel2(
        bab: "1. Sejarah kelahiran Pancasila",
        youtube: "https://youtu.be/uYl5bEsvN6o?si=ZATu1h1qpltQqGiL",
      ),
      SubjectModel2(
        bab: "2. Penerapan nilai-nilai Pancasila dalam kehidupan sehari hari",
        youtube: "https://youtu.be/7sMUavUymfs?si=wiOi-Ht6cJ438sw4",
      ),
    ],
  ),
];
