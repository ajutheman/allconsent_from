import 'package:flutter/material.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';

class MedLayoutHelper {
  // ignore: constant_identifier_names

  static textBoxDecoration(Text Text) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MedColors.fontBackgroundColor),
      height: 30,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text,
      ),
    );
  }

  static formViewTextBox(Text Text) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: MedColors.fontBackgroundColor),
      height: 35,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text,
      ),
    );
  }

  static widgetContainer(Widget widget) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: MedColors.fontBackgroundColor),
      height: 35,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: widget,
      ),
    );
  }

  static roundedTextfield(TextEditingController controller) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
