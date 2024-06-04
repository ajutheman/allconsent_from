import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class ChemicalPeelConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

ChemicalPeelConsentFormEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Chemical Peel Consent Form')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Chemical Peel Consent Form"),
InputWidget.ParagraphWidget("I have received a consultation and hereby authorize physician /therapist as he/she may delegate to perform a ...........................................peel on me."),
InputWidget.ParagraphWidget("Treatment sites: ........................................................"),
InputWidget.ParagraphWidget("Number of sessions: ..................................................."),
InputWidget.ParagraphWidget("I understand that a peel will remove the superficial part of the skin & that it is used to diminish the appearance of fine wrinkles, improve the texture & tone of the skin, reduce pores size, give a smoother appearance and improve pigmentation"),
InputWidget.ParagraphWidget("I understand there is a possibility of short-term effects such as mild to moderate discomfort, pain, itching or burning sensation, swelling and redness, scaling and crusting of the treatment area that last for 2-7 days"),
InputWidget.ParagraphWidget("I understand that rare side effects such as scarring & pigment changes can occur, in addition to skin & sun sensitivity and rarely bacterial infection, acne & allergic reactions. Also I have discussed any history I have regarding poor healing or abnormal scar formation"),
InputWidget.ParagraphWidget("I understand that if I am prone to fever blisters/cold sores (herpes), I need to alert my doctor so he/she could give me a prescription for anti-viral medication to prevent it"),
InputWidget.ParagraphWidget("Clinical results may vary depending on individual factors, including medical history, amount of sun damage or textural problems, skin type, patient compliance with pre/post treatment instructions and individual response to treatment. Thus, there are no guarantees in regard to treatment results"),
InputWidget.ParagraphWidget("I understand that treatment with chemical peels may involve a series of sessions 2-6 weeks apart & the fee structure has been fully explained to me"),
InputWidget.ParagraphWidget("I certify that I have been fully informed of the nature and purpose of the procedure, expected outcomes and possible complications"),
InputWidget.ParagraphWidget("I confirm that I am not pregnant or breastfeeding at this time and that I have not taken isotretinoin (roaccutane, curacne, oratane...) within the last 3 months"),
InputWidget.ParagraphWidget("I consent that I will avoid sun exposure at least 3 days after the peel or as instructed."),
InputWidget.ParagraphWidget("I consent photographs taking for results comparison ....."),
InputWidget.ParagraphWidget("I authorize the anonymous use of photographs for the purposes of medical audit education and promotion..............."),
InputWidget.ParagraphWidget("I certify that I am willing to comply with all pre & post treatment instruction. This procedure has been explained to me & all my questions were answered."),
InputWidget.ParagraphWidget("I accept responsibility for any complications that may occur"),
InputWidget.ParagraphWidget("I certify that I have read and fully understand the above paragraphs & that I have had sufficient opportunity for discussion to have any questions answered and hereby authorize him/her to carry on with the procedure"),
InputWidget.ParagraphWidget("Patient's Name:${consentReq.patientName},"),



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

