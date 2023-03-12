import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// Primary Color of App
  static const primaryColor = Colors.blue;

  // Light theme font colors
  static const primaryLightFontColor = Colors.black;
  static const secondaryLightFontColor = Color(0xFF616161);
  static const tertiaryLightFontColor = Color(0xFF9E9E9E);
   static const floatingActionButtonLightColor =
      Color.fromARGB(255, 150 , 150, 150);

  // Dark theme font colors
  static const primaryDarkFontColor = Colors.white;
  static const secondaryDarkFontColor = Color(0xFF9E9E9E);
  static const tertiaryDarkFontColor = Color(0xFF616161);
    static const floatingActionButtonDarkColor =
      Color.fromARGB(255, 200, 200, 200);

  // Color Filter for tour cards
  static const filterColor = Colors.black26;
  static const ratingColor = Colors.yellow;
}
