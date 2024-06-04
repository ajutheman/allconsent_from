import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class HydrafacialConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

 HydrafacialConsentFormEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Hydrafacial Consent Form')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Hydrafacial Consent Form"),
InputWidget.ParagraphWidget("Your skin may experience temporary irritation, tightness, or redness."),
InputWidget.ParagraphWidget("You may experience tingling and stinging in the treatment area."),
InputWidget.ParagraphWidget("Client experiences may vary."),
InputWidget.ParagraphWidget("You will likely see results immediately after treatment and your skin may feel smooth and hydrated"),
InputWidget.ParagraphWidget("Avoid excessive sun exposure and use a SPF sunscreen."),
InputWidget.ParagraphWidget("I will avoid the use of aggressive exfoliation, waxing, and products containing glycolic acids or retinols that are not part of the recommended take-home regimen in the treated areas for minimum 2 weeks pre-and post-treatment."),
InputWidget.ParagraphWidget("Any contraindications will void this offer and treatment"),
InputWidget.ParagraphWidget("This treatment cannot be transferred to another person"),
InputWidget.ParagraphWidget("Once the machine has been turned on, refunds are prohibited"),
InputWidget.ParagraphWidget("Appointments preferencesare based on machines availability"),
InputWidget.ParagraphWidget("I am a competent consenting adult of at least 18 years of age (or my parent or legal guardian is giving consent on my behalf), and further:"),
InputWidget.ParagraphWidget("Pre and post treatment instructions have been explained to me"),
InputWidget.ParagraphWidget("Have had the opportunity to ask questions, and all of my questions have been answered to my satisfaction"),
InputWidget.ParagraphWidget("Must notify the clinician if my medical history changes prior to subsequent treatments"),
InputWidget.ParagraphWidget("I consent to clinical photographs being taken of my treated areas for my personal health record only"),
InputWidget.ParagraphWidget("There are no refunds for services rendered or/and after a year from purchase and not used."),
InputWidget.ParagraphWidget("My signature below constitutes my acknowledgment and understanding of all this information"),
InputWidget.ParagraphWidget("I hereby authorize and direct doctors, nurses and laser technicians to perform treatment on me."),

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

