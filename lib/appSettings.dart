import 'package:flutter/material.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:medicoplusconsent/presentation/theames/MedTextStyles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class appSettings extends StatefulWidget {
  const appSettings({super.key});

  @override
  State<appSettings> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<appSettings> {
  @override
  Widget  build(BuildContext context) {
    var txtAPIController = TextEditingController();
    var txtDeviceNameController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
            title: Text("Consent form Settings",
                style: MedTextStyles.buttonContentStyle(
                    MedColors.onButtonFontColor))),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MedControls.normallabel("API URL"),
            MedControls.panRoundedTextbox(txtAPIController),
            MedControls.normallabel("Device Name"),
            MedControls.panRoundedTextbox(txtDeviceNameController),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MedControls.panConfirmButton("Save", () async {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                        prefs.setString("ConnectionString", txtAPIController.text);
                        prefs.setString("DeviceName", txtDeviceNameController.text);
                        Navigator.popAndPushNamed(context, '/');
                  }),
                )
              ],
            )
          ],
        )));
  }
}
