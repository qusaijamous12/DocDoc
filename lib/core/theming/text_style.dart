import 'package:flutter/cupertino.dart';

TextStyle _getMyTextStyle({
  required Color color,
  required double fontSize,
  required FontWeight fontWeight,
  TextDecoration ?textDecoration,
  Color? decorationColor,

}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    decoration:textDecoration ,
    decorationColor: decorationColor,
    fontFamily: FontFamily.interFamily,
    fontWeight: fontWeight,
    decorationThickness: 3

  );
}

TextStyle getMyLightTextStyle({
  required Color textColor,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w300,
}) {
  return _getMyTextStyle(
    color: textColor,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

TextStyle getMyRegularTextStyle({
  required Color textColor,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w400,
  Color? decorationColor,
  TextDecoration ?textDecoration

}) {
  return _getMyTextStyle(
    color: textColor,
    fontSize: fontSize,
    fontWeight: fontWeight,
    textDecoration: textDecoration,
    decorationColor: decorationColor
  );
}

TextStyle getMyMediumTextStyle({
  required Color textColor,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return _getMyTextStyle(
    color: textColor,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

TextStyle getMyBoldTextStyle({
  required Color textColor,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w600,
}) {
  return _getMyTextStyle(
    color: textColor,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

class FontFamily {
  static const String interFamily = 'Inter';
}

class FontSizeManger {
  static double fs10 = 10;
  static double fs12 = 12;

  static double fs14 = 14;
  static double fs16 = 16;
  static double fs18 = 18;
  static double fs20 = 20;
}
