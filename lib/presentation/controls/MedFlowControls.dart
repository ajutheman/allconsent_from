import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';

class MedFlowControls {
  static Widget categoryCard(
      BuildContext context, dynamic categorylist, void Function()? onTap) {
    return InkWell(
        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                      color: MedColors.borderGreyColor,
                      blurRadius: 5.0,
                      blurStyle: BlurStyle.normal),
                ],
              ),
              child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: MedColors.containerBackgroundColor,
                  shadowColor: MedColors.fontColorPrimary,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width * .18,
                          width: MediaQuery.of(context).size.width * .18,
                          decoration: BoxDecoration(
                              color: HextoColorConverter.colorConvert(
                                  categorylist.imageBgcolor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(100))),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                                height: MediaQuery.of(context).size.width * .09,
                                width: MediaQuery.of(context).size.width * .09,
                                child: Image.memory(
                                    base64Decode(categorylist.imageSvg))),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: MedControls.normallabel(
                                  categorylist.categoryText)),
                        )
                      ]))),
        ),
        onTap: onTap);
  }
}
