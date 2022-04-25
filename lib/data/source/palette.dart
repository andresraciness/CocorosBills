import 'package:flutter/material.dart';

const TextStyle kHeading = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
  color: Palette.kWhite,
);

const TextStyle kHeadingScaffold = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.bold,
);

const TextStyle kBodyText = TextStyle(
  fontSize: 18,
  color: Palette.kWhite,
);

const TextStyle kButtonText = TextStyle(
  fontSize: 20,
  color: Palette.kWhite,
  fontWeight: FontWeight.bold,
);

class Palette {
  static const Color scaffold = Color(0xFFF0F2F5);
  static Color? colorTitle = Colors.grey[600];
  static Color? colorButtons = Colors.grey[600];
  static const Color kWhite = Colors.white;
  static const Color kTransparent = Colors.transparent;
  static const Color kBlack = Colors.transparent;
}
