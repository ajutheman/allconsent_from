import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';

class xrayconsentenglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  xrayconsentenglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:InputWidget.QuestionText('PERMISSION AND INFORMED CONSENT FOR ( XRAY/OPG/CBCT)',textcolor: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(          
          scrollDirection:Axis.vertical,
          shrinkWrap: true, children: [
         InputWidget.TitleWidget(
            "PERMISSION AND INFORMED CONSENT FOR ( XRAY/OPG/CBCT)"),
        InputWidget.SubTitle("PERMISSION:"),
        InputWidget.QuestionText(
            "I hereby authorize the healthcare professionals of AL Etihad Diagnostic Center to perform upon me  (General XRAY/ Dental scan )  requested by my referring doctor ${consentReq.doctorName.toString()}"),
        InputWidget.SubTitle("EXPLANATION OF PROCEDURE :"),
        InputWidget.QuestionText(
            "The nature and purpose of the procedure have been fully explained to me and I have also been informed of expected benefits, hazards and complications, attendant discomforts, and the risks that may arise to me by my referring doctor. I give this consent voluntarily and of my own free will and I release Al Etihad Diagnostic Center Radiology, and all EDC staff from liability for damages as a result thereof."),
        InputWidget.SubTitle("UNDERSTANDING OF THE FORM:"),
        InputWidget.QuestionText(
            "I confirmed that I have read this form, fully understand its contents prior to my signing."),        
        InputWidget.QuestionText("Patient Name:" + consentReq.patientName)
             
          ]),
      ),
    bottomNavigationBar: SizedBox(
      height: 210,
      child: Container(
        color: MedColors.containerFillGrandientTopColor,
        child: ListView(
          children:[
           InputWidget.QuestionText("Patient Name:" + consentReq.patientName,textcolor: Colors.white),
           InputWidget.QuestionText("Patient Signature",textcolor: Colors.white),
           InputWidget.SignatureWidget(controller, consentReq, context)]    
        ),
      ),
    ));
  }
}
