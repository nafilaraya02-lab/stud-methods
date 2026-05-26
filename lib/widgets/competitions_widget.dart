import 'package:flutter/material.dart';
import 'package:studmethods/models/competitions_model.dart';

class CompetitionsWidget extends StatelessWidget {
  final CompetitionsModel comps;
  final VoidCallback onTap;
  const CompetitionsWidget({
    super.key,
    required this.comps,
    required this.onTap,
  });

  void showFullImage(BuildContext, context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(child: Image.asset(comps.image)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => showFullImage(BuildContext, context),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                comps.image,
                width: double.infinity,
                height: 210,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              child: Text(
                "Detail Competition",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
