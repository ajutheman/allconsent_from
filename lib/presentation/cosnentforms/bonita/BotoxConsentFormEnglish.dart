import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class BotoxConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  BotoxConsentFormEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Botox Consent Form')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Botox Consent Form"),
InputWidget.ParagraphWidget("I ${consentReq.patientName}, consent to Botulinum Toxin Injection."),
InputWidget.ParagraphWidget("I understand that Botulinum toxin reversibly paralysis the muscles and is used to treat the fine lines found between the eyebrows, along the forehead and the crows feet around the eyes. Botox can also be used to stop profuse sweating under the arms and in the palms and soles and for headache (migraine)."),
InputWidget.ParagraphWidget("Good results may be obtained after a single session and the effects will be visible after 7 – 14 days and may last from three to six months"),
InputWidget.ParagraphWidget("There may be mild discomfort while having the injections and the swelling will subside after 24 hours. I must not lay down for 4 hours after this treatment and facial massage is not advised for at least 24 hours after the treatment."),
InputWidget.ParagraphWidget('Side effects of this treatment are rare, in such cases temporary drooping of the eyebrow may occur, the eyes may water and double vision may occur, and very rarely allergic reaction may happen.'),
InputWidget.ParagraphWidget("The aim of Botox is to improve dynamic wrinkles only, not the static nor skin laxity; I fully understand that the degree of benefit will depend on my individual response to this treatment"),
InputWidget.ParagraphWidget("This treatment is NOT recommended for pregnant women or for who has allergic history to botox."),
InputWidget.ParagraphWidget("Sometimes the results may become less in subsequent treatments because of anti bodies formation for botox"),
  InputWidget.ParagraphWidget(" I also have informed that it is very important to inform the physician, who will perform this treatment about any medication or disease I am taking or suffering from that may increase my sensitivity and it may be contra indication for this treatment."),
  InputWidget.ParagraphWidget("I am a competent consenting adult of at least 18 years of age (or my parent or legal guardian is giving consent on my behalf), and further:"),
  InputWidget.ParagraphWidget("Pre and post treatment instructions have been explained to me"),
  InputWidget.ParagraphWidget("Have had the opportunity to ask questions, and all of my questions have been answered to my satisfaction"),
  InputWidget.ParagraphWidget("Must notify the clinician if my medical history changes prior to subsequent treatments"),
  InputWidget.ParagraphWidget("I consent to clinical photographs being taken of my treated areas for my personal health record only"),
  InputWidget.ParagraphWidget("There are no refunds for services rendered or/and after a year from purchase and not used."),
  InputWidget.ParagraphWidget("My signature below constitutes my acknowledgment and understanding of all this information. I hereby authorize and direct doctors, nurses and laser technicians to perform treatment on me.")
      
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

