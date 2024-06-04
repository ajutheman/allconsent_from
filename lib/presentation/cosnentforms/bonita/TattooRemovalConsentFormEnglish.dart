import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class TattooRemovalConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

 TattooRemovalConsentFormEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Tattoo Removal Consent Form')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Tattoo Removal Consent Form"),
InputWidget.ParagraphWidget("In some cases the tattoos’ ink could leak around the area and change color"),
InputWidget.ParagraphWidget("Expect frosting during the treatment"),
InputWidget.ParagraphWidget("Expect reactions on the treated areas like: darkening, blisters, Keloids, swelling, burns, scars, hypopigmentation, hyperpigmentation, itching and redness"),
InputWidget.ParagraphWidget("Side effects can be diminished with time but in some cases can stay longer or even permanent."),
InputWidget.ParagraphWidget("History of any Dermal Fillers / Botox or Tattoos must be informed"),
InputWidget.ParagraphWidget("The number of sessions for different areas could be more or less."),
InputWidget.ParagraphWidget("Time between each session is necessary 6 - 8 weeks."),
InputWidget.ParagraphWidget("Procedure timings vary from area to area and patient to patient"),
InputWidget.ParagraphWidget("Laser treatments are not advised for pregnant women"),
InputWidget.ParagraphWidget("Laser treatments are not recommended right before an important event because reactions vary after each session."),
InputWidget.ParagraphWidget("The number of sessions for the different areas varies from person to person therefore results cannot be estimated."),
InputWidget.ParagraphWidget("Protective eyewear (shields) will be provided to you during the treatment. Failure to wear eye shields during the entire treatment may cause severe and permanent eye damage."),
InputWidget.ParagraphWidget("Choice of suitable machine for the treatment is done by the doctor"),
InputWidget.ParagraphWidget("The results are staged, no guarantees can be or have been made"),
InputWidget.ParagraphWidget("There are no refunds for services rendered."),
InputWidget.ParagraphWidget("I am a competent consenting adult of at least 18 years of age (or my parent or legal guardian is giving consent on my behalf), and further:"),
InputWidget.ParagraphWidget("Pre and post treatment instructions have been explained to me"),
InputWidget.ParagraphWidget("Have had the opportunity to ask questions, and all of my questions have been answered to my satisfaction"),
InputWidget.ParagraphWidget("Must notify the clinician if my medical history changes prior to subsequent treatments"),
InputWidget.ParagraphWidget("I consent to clinical photographs being taken of my treated areas for my personal health record only"),
InputWidget.ParagraphWidget("There are no refunds for services rendered or/and after a year from purchase and not used."),
InputWidget.ParagraphWidget("My signature below constitutes my acknowledgment and understanding of all this information"),
InputWidget.ParagraphWidget("I hereby authorize and direct doctors, nurses and laser technicians to perform tattoo treatment laser on me."),

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

