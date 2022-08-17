import 'package:flutter/material.dart';

class ColorAdapter {
  static Color hex(String hexColor) =>
      Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);

  static Color rgba(int red, int green, int blue, [double opacity = 1]) =>
      Color.fromRGBO(red, green, blue, opacity);
}
