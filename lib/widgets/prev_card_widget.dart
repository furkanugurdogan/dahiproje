import 'package:flutter/material.dart';
import 'package:dahiproje/core/utils/constants.dart';
class PreviousCard extends StatelessWidget {
  final String? doctorImage;
  final String? doctorName;
  final String? doctorProffesion;
  final String? doctorAvailableness;
  final bool? isBusy;

  const PreviousCard({
    Key? key,
    this.doctorImage,
    this.doctorName,
    this.doctorProffesion,
    this.doctorAvailableness,
    this.isBusy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isBusy! ? Constants.greenLineColor : Colors.white,
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              doctorImage ?? '',
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            doctorName ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Text(doctorProffesion ?? ''),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isBusy! ? Constants.greenLineColor : Colors.red,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                doctorAvailableness ?? '',
                style: TextStyle(color:isBusy! ? Constants.greenLineColor : Colors.red, ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
