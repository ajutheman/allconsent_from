import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';

class EsophogramConsent extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  EsophogramConsent({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:InputWidget.QuestionText('Permission and informed consent for esophagogram',textcolor: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(          
          scrollDirection:Axis.vertical,
          shrinkWrap: true, children: [
         InputWidget.TitleWidget("Permission and informed consent for esophagogram"),
        InputWidget.SubTitle("1. PERMISSION:"),
        InputWidget.ParagraphWidget(
            "I hereby authorize the healthcare professionals at AL Etihad Diagnostic Center to perform upon me an XRAY Study Requested requested by Clinician."),
        InputWidget.SubTitle(
            "2. EXPLANATION OF PROCEDURE, RISKS, BENEFITS, AND ALTERNATIVES:"),
        InputWidget.ParagraphWidget(
            "The nature and purpose of the procedure has been fully explained to me and I have also been informed of expected benefits, hazard and complications, attendant discomforst and the risks that may arise."),
        InputWidget.ParagraphWidget("The nature and purpose of the procedure have been fully explained to me. I give this consent voluntarily and on of my own free will."),
        InputWidget.SubTitle("3. NO GUARANTEES:"),
        InputWidget.ParagraphWidget(
            " I acknowledge that no guarantees or assurances have been made to me. I give this consent voluntarily and of my own free will and I release the physician. Al Ethihad Diagnostic Center Radiology, and all other persons from liabilty for damages as a result thereof."),        
        InputWidget.SubTitle("4. UNDERSTANDING OF THE FORM:"),
        InputWidget.ParagraphWidget("I confirmed that I have read this form, fully understand its contents and that all of the blank spaces above have been completed prior to my signing."),
        InputWidget.ParagraphWidget("I confirmed that I have read this form, fully understand its contents prior to my signing."),
        
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
