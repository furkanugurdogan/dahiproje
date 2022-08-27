import 'package:flutter/material.dart';

class Constants {
  static const appBarColor = Color.fromRGBO(31, 65, 132, 1);
  static const consultantColor = Color.fromRGBO(72, 135, 246, 1);
  static const heartColor = Color.fromRGBO(250, 118, 94, 1);
  static const dentalColor = Color.fromRGBO(157, 131, 248, 1);
  static const greenLineColor = Color.fromRGBO(115, 159, 156, 1);
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

isPortrait(context) {
  return MediaQuery.of(context).orientation == Orientation.portrait;
}

EdgeInsetsGeometry customPadding() {
  return const EdgeInsets.only(
    left: 16,
    right: 16,
  );
}
