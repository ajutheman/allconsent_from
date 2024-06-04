import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class DermapenConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  DermapenConsentFormEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Dermapen Consent Form ')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Dermapen Consent Form "),
InputWidget.ParagraphWidget("I ${consentReq.patientName}, confirm I was informed by the licensed professional of Sansaya Clinic about my skin condition and proposed treatment including the potential benefits and risks involved."),
InputWidget.ParagraphWidget("I confirm that I have requested a Derma pen Treatment to attempt to improve my facial expression lines, skin tone and texture and/or scarring."),
InputWidget.ParagraphWidget("I acknowledge that this treatment is not an exact science and no guarantees can be or have been made concerning expected results."),
InputWidget.ParagraphWidget("I understand that several appointments may be necessary to reach the desired results."),
InputWidget.ParagraphWidget("I understand that the risks, side effects, and complications are usually minimal."),
InputWidget.ParagraphWidget("Occasionally I may experience redness, bleeding, temporary scarring, dryness and or discomfort. I have been advised of the risks involved in the treatment, the expected benefits, and alternative treatments, including no treatment at all."),
InputWidget.ParagraphWidget("I agree that this constitutes full disclosure, and that it supersedes any previous verbal or written disclosures. I certify that I have read, and that I have had sufficient opportunity for discussion and to ask questions. I consent to this procedure today and for all subsequent treatments."),
InputWidget.ParagraphWidget("I am a competent consenting adult of at least 18 years of age (or my parent or legal guardian is giving consent on my behalf), and further:"),
InputWidget.ParagraphWidget("Pre and post treatment instructions have been explained to me"),
InputWidget.ParagraphWidget("Have had the opportunity to ask questions, and all of my questions have been answered to my satisfaction"),
InputWidget.ParagraphWidget("Must notify the clinician if my medical history changes prior to subsequent treatments"),
InputWidget.ParagraphWidget("There are no refunds for services rendered or/and after a year from purchase and not used."),
InputWidget.ParagraphWidget("My signature below constitutes my acknowledgment and understanding of all this information"),
InputWidget.ParagraphWidget("I hereby authorize and direct , nurses and laser technicians to perform treatment on me."),

      
        ]),
    bottomNavigationBar: SizedBox(
      height: 245,
      child: Container(
        color: Colors.white,
        child: ListView(
          children:[
              InputWidget.FormLabel("Patient Sign"),
             InputWidget.FormLabel("${consentReq.patientName},"),
             InputWidget.SignatureWidget(controller, consentReq, context),
  
           ]    
        ),
      ),
    ));
  }
}

