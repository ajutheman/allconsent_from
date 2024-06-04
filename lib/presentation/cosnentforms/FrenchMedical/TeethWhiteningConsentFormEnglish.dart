
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class TeethWhitningEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  TeethWhitningEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Teeth Whitening Consent Form')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Teeth Whitening Consent Form"),
      InputWidget.ParagraphWidget("Whitening can only be performed in a healthy mouth. We would have assessed your mouth to ensure it is healthy before commencing. However if you have any pain or other concerns regarding the health of your mouth please speak to us regarding this."),
      InputWidget.ParagraphWidget("We are using hydrogen peroxide to whiten your teeth at levels legally allowed. You will be using whitening trays made specifically for your mouth for this procedure. If you loose or damage these trays there will be an additional cost to replace them."),
      InputWidget.ParagraphWidget("  It is your responsibility to follow the ‘wear’ instructions that we have provided you"),
      InputWidget.ParagraphWidget("There are no guarantees as to the degree of whitening of your teeth and the amount of whitening varies with the individual."),
      InputWidget.ParagraphWidget(" Your teeth will take approximately take 2 weeks to whiten, however you may wish to whiten your teeth for longer if your desired results are not achieved within this time period."),
      InputWidget.ParagraphWidget("  We will supply you with 2 weeks worth of bleach and bleaching trays. If your desired results are not achieved you will have to purchase additional bleach, at an additional cost from the practice."),
      InputWidget.ParagraphWidget("   It is your responsibility to inform us if you are pregnant, breast-feeding or have any known allergies/sensitivity to any bleaching products"),
      InputWidget.ParagraphWidget("  Any crowns, bridges or filling materials in your teeth will not bleach and may require replacement following the bleaching procedure, the charge of which is not included in the cost of the whitening treatment."),
      InputWidget.ParagraphWidget(" You are likely to suffer from mild sensitivity especially in the first few days.We advise youtouse anti---sensitive toothpasteduring the treatment."),
      InputWidget.ParagraphWidget("    Ensure you wipe away excess from the gums or gum irritation may occur"),
      InputWidget.ParagraphWidget("  We advise you to abstain from red food or drinks, smoking, tea, coffee and curries during the treatment as this will hinder progress of the whitening. The consumption of the aforesaid will also determine how long the teeth will remain your desired shade."),
      InputWidget.ParagraphWidget("I consent to the taking of photographs, study models and x-rays before, during and after treatment to assist in the planning and progress treatment objectives. If the case proves to be of special scientific interest, the dentist reserves the right to present the records in scientific papers or demonstrations to the profession."),
      InputWidget.ParagraphWidget("I am a competent consenting adult of at least 18 years of age (or my parent or legal guardian is giving consent on my behalf), and further:"),
      InputWidget.ParagraphWidget(" Pre and post treatment instructions have been explained to me"),
      InputWidget.ParagraphWidget(" Have had the opportunity to ask questions, and all of my questions have been answered to my satisfaction"),
      InputWidget.ParagraphWidget("  Must notify the clinician if my medical history changes prior to subsequent treatments"),
      InputWidget.ParagraphWidget("  There are no refunds for services rendered or/and after a year from purchase and not used."),
      InputWidget.ParagraphWidget(" My signature below constitutes my acknowledgment and understanding of all this information"),
      InputWidget.ParagraphWidget("I hereby authorize and direct doctors, nurses and laser technicians to perform treatment on me."),

        ]),
    bottomNavigationBar: SizedBox(
      height: 245,
      child: Container(
        color: Colors.white,
        child: ListView(
           children:[
           InputWidget.SubTitle("Patient Name & Sign :${consentReq.patientName}"),           
           InputWidget.SignatureWidget(controller, consentReq, context)
           ] 
        ),
      ),
    ));
  }
}

