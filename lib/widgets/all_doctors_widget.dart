import 'package:flutter/material.dart';
import 'package:dahiproje/core/utils/constants.dart';
import 'custom_rating_widget.dart';

class AllDoctorsWidget extends StatelessWidget {
  final String? doctorName;
  final String? doctorSpecialist;
  final String? doctorRate;
  const AllDoctorsWidget({
    Key? key,
    this.doctorName,
    this.doctorSpecialist,
    this.doctorRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) / 7,
      width: screenWidth(context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight(context) / 10,
              width: screenWidth(context) / 4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Image.asset('assets/images/doctorTwo.jpg',fit: BoxFit.fill),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        doctorName ?? '',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 110,),
                      Icon(Icons.favorite,size: 16,color: Colors.red,)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  doctorSpecialist ?? '',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const StarRating(
                      color: Colors.yellow,
                      rating: 4,
                      starCount: 5,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        text: doctorRate ?? '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: const [
                          TextSpan(
                            text: ' (2475 Reviews)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
