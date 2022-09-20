import 'package:flutter/material.dart';
import 'package:universal_html/js.dart';

import 'fonts.dart';

class TextStyles {
  TextStyles._();

  static TextStyle get logo => TextStyle(
        fontFamily: Fonts.product,
        color: Color(0xFF45405B),
        fontSize: 22.0, //22.0
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      );

  static TextStyle get menu_item => TextStyle(
        fontFamily: Fonts.product,
        fontSize: 12.0, //12,.0
        letterSpacing: 1.0,
        color: Color(0xFF45405B),
      );

  static TextStyle get heading => TextStyle(
        fontFamily: Fonts.nexa_bold,
        color: Color(0xFF45405B),
        fontSize: 45.0, //45.0
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      );

  static TextStyle get sub_heading => TextStyle(
        color: Color.fromARGB(255, 74, 67, 107),
        fontFamily: Fonts.product,
        fontSize: 30.0, //17.0
        letterSpacing: 1.2,
      );

  static TextStyle get company => TextStyle(
        fontFamily: Fonts.product,
        color: Color(0xFF45405B),
        height: 1.5,
        fontSize: 15.0, //15.0
        letterSpacing: 1.0,
      );

  static final bodyTextColor = Color(0xFF55516C);
  static TextStyle get body {
    return TextStyle(
      fontFamily: Fonts.product,
      color: bodyTextColor,
      height: 1.5,
      fontSize: 12.0, //12.0
      letterSpacing: 1.0,
    );
  }

  static TextStyle get body1 => TextStyle(
        fontFamily: Fonts.product,
        color: bodyTextColor,
        height: 1.5,
        fontSize: 20, //10.0
        letterSpacing: 1.0,
      );

  static TextStyle get chip => TextStyle(
        fontFamily: Fonts.product,
        color: bodyTextColor,
        height: 1.5,
        fontSize: 12.0, //12.0
        letterSpacing: 1.0,
      );
}
