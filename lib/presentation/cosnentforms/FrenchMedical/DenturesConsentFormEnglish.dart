// DenturesConsentFormEnglish
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class DenturesEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  DenturesEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Dentures Consent Form English')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Dentures Consent Form English"),
      InputWidget.ParagraphWidget("I ${consentReq.patientName},  UNDERSTAND THAT REMOVABLE PROSTHETIC APPLIANCES (PARTIAL DENTURES and FULL ARTIFICIAL DENTURES) include risks and possible failures associated with such dental treatment. I agree to assume those risks and possible failures associated with, but not limited to, the following:"),
      InputWidget.ParagraphWidget("(even though the utmost care and diligence is exercised in preparation for, and fabrication of, prosthetic appliances, there is the possibility of failure with patients not adapting to them):"),
      InputWidget.ParagraphWidget("1. Failure of full dentures: there are many variables which may contribute to this possibility, such as: gum tissues which cannot bear the pressures placed upon them resulting in excessive tenderness and sore spots;"),
      InputWidget.ParagraphWidget("a) jaw ridges which may not provide adequate support and/or retention;"),
      InputWidget.ParagraphWidget("b)   musculature in the tongue, floor of the mouth, cheeks, etc., which may not adapt to and be able to         accommodate the artificial appliances;"),
      InputWidget.ParagraphWidget("c)   excessive gagging reflexes;"),
      InputWidget.ParagraphWidget("d)   excessive saliva or excessive dryness of mouth;"),
      InputWidget.ParagraphWidget("e)   general psychological and/or physical problems interfering with success."),
      InputWidget.ParagraphWidget("2. Failure of partial dentures: Many variables may contribute to unsuccessful utilizing of partial dentures (removable bridges). The variables may include those problems related to failure of full dentures, in addition to:"),
      InputWidget.ParagraphWidget("a)   natural teeth to which partial dentures are anchored (called abutment teeth) may become tender, sore,    and/or mobile;"),
      InputWidget.ParagraphWidget("b) abutment teeth may decay or erode around the clasps or attachments;"),
      InputWidget.ParagraphWidget("c)   tissues supporting the abutment teeth may fail."),
      InputWidget.ParagraphWidget("3. Breakage: Due to the types of materials which are necessary in the construction of these appliances, breakage may occur even though the materials used were not defective. Factors which may contribute to breakage are:"),
      InputWidget.ParagraphWidget("a) chewing on foods or objects which are excessively hard;"),
      InputWidget.ParagraphWidget("b) gum tissue shrinkage which causes excessive pressures to be exerted unevenly on the dentures;"),
      InputWidget.ParagraphWidget("c) cracks which may be unnoticeable and which occurred previously from causes such as those mentioned in (1) and (2); or the dentures having being dropped or damaged previously. The above may also cause extensive denture tooth wear or chipping."),
      InputWidget.ParagraphWidget("4. Loose Dentures: Full dentures normally become looser when there are changes in the supporting gum tissues. Dentures themselves do not change unless subjected to extreme heat or dryness. When dentures become “loose”, relining the dentures may be necessary. Normally, it is necessary to charge for relining dentures. Partial dentures become loose for the listed reasons in addition to clasps or other attachments loosening. Sometimes dentures feel loose for other reasons."),
      InputWidget.ParagraphWidget("5. Allergies to dental materials: Very infrequently, the oral tissues may exhibit allergic symptoms to the materials used in the construction of either partial dentures or full dentures, over which we have no control."),
      InputWidget.ParagraphWidget("6. Failure of supporting teeth and/or soft tissue: Natural teeth supporting partials may fail due to decay; excessive trauma; gum tissue or bony tissue problems. This may necessitate extraction. The supporting soft tissues may fail due to many problems including poor dental or general health."),
      InputWidget.ParagraphWidget(" 7. It is the patient’s responsibility to seek attention when problems occur and do not lessen in a reasonable amount of time; also, to be examined regularly to evaluate the dentures, condition of the gums, and the patient’s oral health."),
      InputWidget.ParagraphWidget("I am a competent consenting adult of at least 18 years of age (or my parent or legal guardian is giving consent on my behalf), and further:"),
      InputWidget.ParagraphWidget("    Pre and post treatment instructions have been explained to me"),
      InputWidget.ParagraphWidget("      Have had the opportunity to ask questions, and all of my questions have been answered to my satisfaction"),
      InputWidget.ParagraphWidget("    Must notify the clinician if my medical history changes prior to subsequent treatments"),
      InputWidget.ParagraphWidget("  There are no refunds for services rendered or/and after a year from purchase and not used."),
      InputWidget.ParagraphWidget("·         My signature below constitutes my acknowledgment and understanding of all this information"),
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

