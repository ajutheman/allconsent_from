import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';

class MedButtonStyles {
  static ButtonStyle okButtonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: const Color(0xff00963c),
      foregroundColor: const Color(0xffffffff),
      disabledBackgroundColor: MedColors.proceedButtonColor,
      textStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
      )));

  static ButtonStyle proceedButtonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: const Color(0xff00963c),
      foregroundColor: const Color(0xffffffff),
      disabledBackgroundColor: MedColors.proceedButtonColor,
      textStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
      )));

  static ButtonStyle retryButtonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      minimumSize: const Size(123, 32),
      backgroundColor: MedColors.cancelButtonColor,
      foregroundColor: MedColors.onButtonFontColor,
      disabledBackgroundColor: MedColors.cancelButtonColor,
      disabledForegroundColor: MedColors.onButtonFontColor,
      textStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
        fontSize: 15,
        color: MedColors.onButtonFontColor,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
      )));


      static ButtonStyle submiteStyle2 = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      minimumSize: const Size(123, 32),
      backgroundColor:  const Color(0xff00963c),
      foregroundColor: MedColors.onButtonFontColor,
      disabledBackgroundColor:  const Color(0xff00963c),
      disabledForegroundColor: MedColors.onButtonFontColor,
      textStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
        fontSize: 15,
        color: MedColors.onButtonFontColor,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
      )));

  static ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
      side: const BorderSide(
          color: MedColors.containerFillGrandientTopColor, width: 2.5),
      shape: (RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))));
}
