import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';

class xrayIVP extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  xrayIVP({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Permission and informed consent for IVP')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                InputWidget.SubTitle("1. PERMISSION"),
                InputWidget.QuestionText("I hereby authorize Doctor ${consentReq.doctorDocNo} or his/her associates or his/her assistants or his/her choice Al Etihad Diagnostic Center Radiology to perform upon me an XRAY contrast (IVP) by my ${consentReq.doctorDocNo} "),
                InputWidget.SubTitle("2. EXPLANATION OF PROCEDURE, RISKS, BENEFITS, AND ALTERNATIVES"),
                InputWidget.QuestionText("The nature and purpose of the procedure has been fully explained to me and I have also been informed of expected benefits, hazards and complications, attendant discomforts and the risks that may arise."),
                InputWidget.SubTitle("3. NO GUARANTEES"),
                InputWidget.QuestionText("I acknowledge that no guarantees or assurances have been made to me. I give this consent voluntarily and of my own free will and I release the physician, Al Etihad Diagnostic Center Radiology, and all other persons from liability for damages as a result thereof."),
                InputWidget.SubTitle("4. UNDERSTANDING OF THE FORM:"),
                InputWidget.QuestionText("I confirmed that I have read this form, fully understand its contents and that all of the blank spaces above have been completed prior to my signing."),
                SizedBox(height: 20),
                InputWidget.SubTitle('N.B: Metformin/glucophage medications should be stopped at the time and withheld for 48 hours after the procedure. Patients should contact their physician for instructions.')


              ]),
        ),
        bottomNavigationBar: SizedBox(
          height: 210,
          child: Container(
            color: MedColors.containerFillGrandientTopColor,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(children: [
                InputWidget.QuestionText("Patient Name : ${consentReq.patientName} | Patient MRNO:${consentReq.patDocNo}",
                    textcolor: Colors.white),
                InputWidget.SignatureWidget(controller, consentReq, context)
              ]),
            ),
          ),
        ));
  }
}
