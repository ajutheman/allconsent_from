import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class HAFillerConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  HAFillerConsentFormEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('H A Filler Consent Form')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("H A Filler Consent Form "),
InputWidget.ParagraphWidget(" I ${consentReq.patientName}, consent to Hyaluronic acid treatment."),
InputWidget.ParagraphWidget(" I understand that a liquid made of hyaluronic acid will be injected into areas of my face to smooth out folds and wrinkles resulting in a healthy vital appearance.Liquid Hyaluronic acid is also used for lip enhancement if I so desire. "),
InputWidget.ParagraphWidget(" Good results may be obtained after a single session and the effects will be immediately visible and last for several months depending on the filler used."),
InputWidget.ParagraphWidget(" The treatment session lasts about 30 minutes and depending on the area to be treated, a local anesthetic or anesthetizing cream may be applied."),
InputWidget.ParagraphWidget("There may be mild discomfort while having the injections and the swelling will subside after 24-48 hours."),
InputWidget.ParagraphWidget(" Side effects of this treatment are rare, in such cases prolonged redness and tenderness at the injection site can be experienced but will subside after a few days or weeks, beading under the skin (granulomas ) may occur in occasional cases ,and very rarely infection or allergic reaction it may happens ."),
InputWidget.ParagraphWidget("It is advisable not to put any cream or Make up on the treated area for 1-2 days at least."),
InputWidget.ParagraphWidget("The aim of the filler is to improve create volume to requested areas of the skin. I fully understand that the degree of benefit will depend on my individual response to this treatment."),
InputWidget.ParagraphWidget("I also have informed that it is very important to tell the doctor who will perform this treatment, about any disease or drugs I am suffering from or taking which may increase sensitivity to this treatment and may cause complications (like herpes simplex , et..)."),
InputWidget.ParagraphWidget("I am a competent consenting adult of at least 18 years of age (or my parent or legal guardian is giving consent on my behalf), and further:"),
InputWidget.ParagraphWidget("Pre and post treatment instructions have been explained to me"),
InputWidget.ParagraphWidget("Have had the opportunity to ask questions, and all of my questions have been answered to my satisfaction"),
InputWidget.ParagraphWidget("Must notify the clinician if my medical history changes prior to subsequent treatments"),
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
             InputWidget.FormLabel("${consentReq.patientName}"),
             InputWidget.SignatureWidget(controller, consentReq, context),
      
           ]    
        ),
      ),
    ));
  }
}

