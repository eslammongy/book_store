import 'package:book_store/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  static TextStyle mediumTitle = GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: greenColor));
}
