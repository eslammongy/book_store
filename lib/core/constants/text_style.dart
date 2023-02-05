import 'package:book_store/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  static const String gtSectraFine = "GT Sectra Fine";
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static final textStyle20 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  ));
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: gtSectraFine,
    letterSpacing: 1.2,
  );
  static final textStyle14 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ));

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
