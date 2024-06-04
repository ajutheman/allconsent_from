import 'package:flutter/material.dart';

class MedColors {
  static const containerFillGrandientTopColor = Color.fromARGB(255, 0, 62, 79);
  static const containerFillGradientBottomColor = Color.fromARGB(255, 5, 103, 130);

  static const fontColorPrimary = Color(0xff000000);
  static const fontBackgroundColor = Colors.white;
  static const containerBackgroundColor = Colors.white;

  static const controlBackColor = Color(0xffD9D9D9);

  static const cancelButtonColor = Color(0xffB41616);
  static const proceedButtonColor = Color(0xff00963C);
  static const outlineButtonColor = Color(0xff0095d9);
  static const borderGreyColor = Color(0xffD7D7D7);
  static const secondaryButtonColor = Color(0xffE3782E);
  static const warningMessageBackColor = Color(0xffC59600);
  static const warningMessageBoxBackgroundColor = Color(0xff2d9acc);
  static const panbluecolor = Color(0xff4E5EEE);
  static const onButtonFontColor = Colors.white;
}

class MedGradients {
  static const containerFillGrandient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment(0, 1),
      colors: <Color>[
        MedColors.containerFillGrandientTopColor,
        MedColors.containerFillGradientBottomColor
      ]);
}

class HextoColorConverter {
  static Color colorConvert(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
