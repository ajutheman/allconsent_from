import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedTextStyles {
  static TextStyle headerFontStyle() {
    return GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600);
  }

  static TextStyle cardInnerFontStyle() {
    return GoogleFonts.poppins(fontSize: 13);
  }

  static TextStyle dropDownFontStyle() {
    return GoogleFonts.poppins(fontSize: 14);
  }

  static TextStyle cardTitleTextStyle() {
    return GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.white);
  }

  static TextStyle cardDetailsTextStyle() {
    return GoogleFonts.poppins(fontSize: 14);
  }

  static TextStyle buttonContentStyle(fntcolor) {
    return GoogleFonts.poppins(
        fontSize: 20, color: fntcolor, fontWeight: FontWeight.w400);
  }

  static TextStyle pageSubheadingBoldFontStyle(fntcolor) {
    return GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w700, color: fntcolor);
  }

  static TextStyle pageSubheadingFontStyle(fntcolor) {
    return GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w400, color: fntcolor);
  }

  static TextStyle LargeFontStyle(fntcolor) {
    return GoogleFonts.poppins(
        fontSize: 24, fontWeight: FontWeight.w400, color: fntcolor);
  }

  static TextStyle pageContentFontStyle() {
    return GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400);
  }

  static TextStyle pageContentBoldFontStyle() {
    return GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600);
  }
}
