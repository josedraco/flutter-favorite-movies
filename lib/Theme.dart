import 'package:flutter/material.dart';

class Colors {
  const Colors();

  static const Color primaryBackground = const Color(0xFFFFFFFF);
  static const Color shadowColor = const Color(0xFFD4D8DD);
  static const Color textColor = const Color(0xFF273A55);
  static const Color textMutedColor = const Color(0xFFC9CED4);
}

class Dimens {
  const Dimens();

  static const appBarHeight = 68.0;

  static const coverWidth = 128.0;
  static const coverHeight = 192.0;
  static const coverMarginLeft = 16.0;

  static const cardHeight = 192.0;

  static const cardMarginLeft = 108.0;
  static const cardMarginRight = 16.0;
  static const cardMarginTop = 16.0;
  static const cardMarginBottom = 8.0;
}

class TextStyles {
  const TextStyles();

  static const TextStyle appBarTitle = const TextStyle(
    color: Colors.textColor,
    fontFamily: 'Lato',
    fontWeight: FontWeight.w700,
    letterSpacing: 1.5,
    fontSize: 24.0,
  );

  static const TextStyle cardTitle = const TextStyle(
    color: Colors.textColor,
    fontFamily: 'Lato',
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
    fontSize: 18.0,
  );

  static const TextStyle cardStaring = const TextStyle(
    color: Colors.textMutedColor,
    fontFamily: 'Lato',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    fontSize: 16.0,
  );

  static const TextStyle cardRating = const TextStyle(
    color: Colors.textColor,
    fontFamily: 'Lato',
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
  );
}
