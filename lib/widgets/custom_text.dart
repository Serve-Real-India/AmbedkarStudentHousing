import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  CustomText({
    required this.text,
    this.fontSize,
    this.fontFamily,
    this.textColor,
    this.fontWeight,
    this.textAlign,
    super.key,
  });

  String text;
  double? fontSize;
  String? fontFamily;
  Color? textColor;
  FontWeight? fontWeight;
  TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: fontSize ?? 25.0,
          fontFamily: fontFamily ?? 'Lato',
          color: textColor ?? Colors.black,
          fontWeight: fontWeight),
    );
  }
}
