
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';

class UltraSoundConsent extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel request;

  UltraSoundConsent({super.key, required this.request}) { }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:InputWidget.QuestionText('Permission and informed consent for ultrasound',textcolor: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(          
          scrollDirection:Axis.vertical,
          shrinkWrap: true, children: [
        InputWidget.TitleWidget("PERMISSION AND INFORMED CONSENT FOR ULTRASOUND"),
        InputWidget.SubTitle("1. PERMISSION:"),
        InputWidget.ParagraphWidget(
            "I hereby authorize the healthcare professionals of AL Etihad Diagnostic Center to perform upon me (Ultrasound scan) requested by my referring Doctor."),
        InputWidget.SubTitle(
            "2. EXPLANATION OF PROCEDURE, RISKS, BENEFITS, AND ALTERNATIVES:"),
        InputWidget.ParagraphWidget(
            "The nature and purpose of the procedure have been fully explained to me. I give this consent voluntarily and on of my own free will."),
        InputWidget.SubTitle("3. UNDERSTANDING OF THE FORM:"),
        InputWidget.ParagraphWidget(
            "I confirmed that I have read this form, fully understand its contents prior to my signing."),        
         
          ]),
      ),
    bottomNavigationBar: SizedBox(
      height: 210,
      child: Container(
        color: MedColors.containerFillGrandientTopColor,
        child: ListView(
          children:[
           InputWidget.QuestionText("Patient Name:" + request.patientName,textcolor: Colors.white),
           InputWidget.QuestionText("Patient Signature",textcolor: Colors.white),
           InputWidget.SignatureWidget(controller, request, context)]    
        ),
      ),
    ));
  }
}
