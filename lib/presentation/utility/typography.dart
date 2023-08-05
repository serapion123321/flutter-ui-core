import 'package:flutter_ui_core/presentation/utility/color.dart';
import 'package:flutter/material.dart';

class StandardFontSize {
  static  double bodyTextXxl = 28;
  static  double bodyTextXl = 24;
  static  double bodyTextL = 20;
  static  double bodyTextM = 16;
  static  double bodyTextS = 12;
  static  double bodyTextXs = 10;
  static  double bodyTextXxs = 8;

  static  double h1 = 32;
  static  double h2 = 28;
  static  double h3 = 24;
  static  double h4 = 20;
  static  double h5 = 16;
  static  double h6 = 12;
}

class StandardFontWeight {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class BodyTextStyle {
  static TextStyle textStyle({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        color: color ?? ColorTheme.black,
        fontSize: fontSize ?? StandardFontSize.bodyTextS,
        fontWeight: fontWeight ?? StandardFontWeight.regular);
  }
}

class HeaderTextStyle {
  static TextStyle textStyle({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        color: color ?? ColorTheme.black,
        fontSize: fontSize ?? StandardFontSize.bodyTextXl,
        fontWeight: fontWeight ?? StandardFontWeight.bold);
  }
}

Widget standardBodyText({
  required text,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextOverflow? textOverflow,
  int? maxLines,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    style: BodyTextStyle.textStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize),
    overflow: textOverflow,
    maxLines: maxLines,
    textAlign: textAlign,
  );
}

Widget standardHeaderText({
  required text,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextOverflow? textOverflow,
  int? maxLines,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    style: HeaderTextStyle.textStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize),
    overflow: textOverflow,
    maxLines: maxLines,
    textAlign: textAlign,
  );
}
