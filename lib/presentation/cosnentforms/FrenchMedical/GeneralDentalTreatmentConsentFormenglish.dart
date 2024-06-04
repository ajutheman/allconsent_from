
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class GeneralDentalTreatmentConsentFormenglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  GeneralDentalTreatmentConsentFormenglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('General Dental Treatment Consent Form english')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Dental Filling Restorative Treatment Consent Form"),
      InputWidget.ParagraphWidget("Dentist Name : ${consentReq.doctorName}, "),
      InputWidget.ParagraphWidget("Name of Patient :  ${consentReq.patientName},"),
     
    InputWidget.ParagraphWidget("Please choose ( tick ) your treatment and read and sign at the bottom of form"),
    InputWidget.ParagraphWidget("1.      X- RAYS"),
    InputWidget.ParagraphWidget("2.      DRUGS AND MEDICATIONS"),
    InputWidget.ParagraphWidget(" I understand that antibiotics and analgesics and other medications can cause allergic reaction causing redness and swelling of tissues, pain, itching, vomiting, and anaphylactic shock ( severe allergic reaction )"),
    InputWidget.ParagraphWidget("3.      CHANGES IN TREATMENT PLAN"),
    InputWidget.ParagraphWidget("·       I understand that during treatment it may be necessary to change or add procedures because of conditions found while working on the teeth that were not discovered during examinations, the most common being root canal therapy following routine restorative procedures. I give my permission to the dentist to make any /all changes and additions as necessary"),
    InputWidget.ParagraphWidget("4.       REMOVAL OF TEETH ( NORMAL AND SURGICAL )"),
    InputWidget.ParagraphWidget(" Alternatives to removal have been explained to me ( root canal therapy, crowns, and periodontal surgery etc.) and I authorize the dentist to remove the following teeth………………………………………………………………………………………………………………………Further , I understand that there are certain inherent and potential risks in any treatment or procedure, and that in this specific instance , such risks may include the following:"),
    InputWidget.ParagraphWidget(" Postoperative discomfort and swelling for several days"),
    InputWidget.ParagraphWidget("  Restricted mouth opening for several days"),
    InputWidget.ParagraphWidget(" Prolonged bleeding"),
    InputWidget.ParagraphWidget("Ø Nausea and vomiting"),
    InputWidget.ParagraphWidget(" Postoperative infection requiring additional treatment"),
    InputWidget.ParagraphWidget("Ø  Decision to leave a small piece of root in jaw when the removal would require extensive surgery"), 
    InputWidget.ParagraphWidget(" Damage to adjacent teeth , fillings, and crowns"),
    InputWidget.ParagraphWidget(" Prolonged drowsiness."),
    InputWidget.ParagraphWidget("  Injury to the nerve underlying the teeth resulting in numbness or tingling of the lip ,chin, gums, check, and tongue on the operated side. This may persist for several weeks, months, or in remote instances. Be permanent."),
    InputWidget.ParagraphWidget("Fracture of the jaw"),
    InputWidget.ParagraphWidget(" ENDODONTIC TREATMENT"),
    InputWidget.ParagraphWidget("I realize there is no guarantee that root canal treatment will save my tooth, and that complications can occur from the treatment,and I understand that there are certain inherent and potential risks in any treatment and procedure, and I have been briefed about potential risk including the following endodontic treatment:"),
    InputWidget.ParagraphWidget(" Failure to completely eliminate the infection requiring retreatment, root surgery or removal of the tooth."),
    InputWidget.ParagraphWidget(" Post-operative pain , swelling ,brushing and limited jaw opening may persist for several days"),
    InputWidget.ParagraphWidget(" Separation (breakage) of an instrument with in the canal during treatment. Broken instrument tips are  typically allowed to remain in the canal, and only rarely are they cause of subsequent problems."),
    InputWidget.ParagraphWidget(" Perforation of the root from within the canal occur requiring additional treatment by a specialist. Such  complications will occasionally result in the loss of the tooth."),
    InputWidget.ParagraphWidget(" Damage to nerve supplying the teeth resulting in temporary or, in rare instances, permanent numbness  or tingling of the lip. Chin, or other areas of the jaws or face"),
    InputWidget.ParagraphWidget(" Inability to adequately clean the canal due to unforeseen calcified obstructions or severely bent roots.Under certain circumstances the patient may be referred to specialist for successful complication of the procedure.Loss of the tooth may occur."),
    InputWidget.ParagraphWidget("A fracture of the treated tooth, occurring during or after endodontic treatment. Treated teeth sometimes break due to the tooth’s loss of strength resulting from the procedure or the infection. In most cases crown is recommended after treatment to prevent such an occurrence"),
    InputWidget.ParagraphWidget("6.      FILLINGS"),
    InputWidget.ParagraphWidget("·      I understand that care must be exercised in chewing on fillings especially during the first 24 hours to avoid breakage. I understand that a more expensive filling that initially diagnosed may be require due to additional decay. I understand that significant sensitivity is a common after effect of a newly placed filling."),
    InputWidget.ParagraphWidget(" 7.       CROWNS, BRIDGS AND CAPS"),
    InputWidget.ParagraphWidget("·      I understand that sometimes it is not possible to match the color of natural teeth exactly with artificial teeth. I further understand that I may be wearing temporary crowns, which may come off easily and that I must be careful to ensure that they are kept on until the permanent crowns are delivered. I realize the final opportunity to make changes in my new crown, bridges or cap (including shape, fit size and color) will be before cementation."),
    InputWidget.ParagraphWidget("8.       DENTURES , COMPLETE OR PARTIAL"),
    InputWidget.ParagraphWidget("·        I realize that full or partial dentures are artificial, constructed of plastic, metal and porcelain. The problems of wearing these appliances have been explained to me, including looseness, soreness, and possible breakage. I realize the final opportunity to make changes in my new dentures (including shapes, fit,size, placement, and color) will be the “teeth in wax” try in vist. I understand that most removable dentures require relining approximately three to twelve month after initial placement."),
    InputWidget.ParagraphWidget(" I understand that dentistry is not an exact science and that, therefore, reputablepractitioners cannot fully guarantee results. I acknowledge that no guarantee or assurance has been made by anyone regarding the dental treatment which I have requested and authorized."),


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

