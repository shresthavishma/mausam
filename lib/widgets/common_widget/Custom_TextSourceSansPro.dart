// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextSourceSansPro extends StatelessWidget {
  final String text;
  final double? fontsize;
  final Color? color;
  final bool isBold;
  const CustomTextSourceSansPro({
    Key? key,
    required this.text,
    required this.fontsize,
    required this.color,
    required this.isBold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: color ?? Colors.white,
        fontSize: fontsize ?? 14.00,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
