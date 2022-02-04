import 'package:flutter/material.dart';

const primaryColor = Color(0xFFF67952);
const bgColor = Color(0xFFFBFBFD);
const itemColor = Color(0xFFEFEFF2);
const circle1 = Color(0xFFBEE8EA);
const circle2 = Color(0xFF141B4A);
const circle3 = Color(0xFFF4E5C3);

const double defaultPadding = 16.0;
const double defaultBorderRadius = 12.0;

const outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(defaultBorderRadius),
  ),
  borderSide: BorderSide.none,
);
final themeData = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: bgColor,
  fontFamily: "Gordita",
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.black54),
  ),
);