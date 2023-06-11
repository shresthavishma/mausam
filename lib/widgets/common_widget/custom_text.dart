// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songsbyweather/provider/theme_provider.dart';

class CustomText extends StatelessWidget {
  final String text;
  final bool isBold;
  final double? fontSize;
  final Color? color;
  const CustomText({
    Key? key,
    required this.text,
    required this.isBold,
    this.fontSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkThemeProvider>(builder: (context, value, child) {
      return Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 14.0,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          color: value.darkTheme ? Colors.white : color ?? Colors.black,
        ),
      );
    });
  }
}
