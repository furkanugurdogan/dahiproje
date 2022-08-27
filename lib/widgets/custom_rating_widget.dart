import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int? starCount;
  final double? rating;
  final Color? color;

  const StarRating({
    Key? key,
    this.starCount = 5,
    this.rating = .0,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        starCount!,
        (index) => buildStar(context, index),
      ),
    );
  }

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating!) {
      icon = Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
        size: 16,
      );
    } else if (index > rating! - 1 && index < rating!) {
      icon = Icon(
        Icons.star_half,
        color: color ?? Theme.of(context).primaryColor,
        size: 16,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color ?? Theme.of(context).primaryColor,
        size: 16,
      );
    }
    return icon;
  }
}
