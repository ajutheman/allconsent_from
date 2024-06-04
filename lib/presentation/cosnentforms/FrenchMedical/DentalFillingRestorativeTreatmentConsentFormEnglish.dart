import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class DentalFillingRestorativeTreatmentConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  DentalFillingRestorativeTreatmentConsentFormEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Dental Filling Restorative Treatment Consent Form')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Dental Filling Restorative Treatment Consent Form"),
InputWidget.ParagraphWidget("Dentist Name : ${consentReq.doctorName}, "),

    InputWidget.ParagraphWidget(" File No: :${consentReq.patDocNo}, "),
      InputWidget.ParagraphWidget("Name of Patient :  ${consentReq.patientName},"),



            InputWidget.ParagraphWidget("Please read and sign at the bottom of the form:"),
            InputWidget.ParagraphWidget("DESCRIPTION AND BENEFIT OF THE PROCEDURE"),
            InputWidget.ParagraphWidget("A tooth filling is a procedure wherein the damaged or decayed part of a tooth is removed and the area is filled with a replacement material in order to protect against further damage, to restore the tooth’s appearance and function and to help alleviate dental pain."),
            InputWidget.ParagraphWidget("RISKS, COMPLICATIONS AND DISCOMFORTS"),
            InputWidget.ParagraphWidget("I understand that there are risks and complications associated with the administration of medications, including anesthesia, and performance of the recommended treatment. These potential risks and complications, include, but are not limited to, the following:"),
            InputWidget.ParagraphWidget("1. Drug reactions and side effects."), 
            InputWidget.ParagraphWidget("2. Damage to adjacent teeth or tooth restorations"),
            InputWidget.ParagraphWidget("3. Necessity for root canal therapy due to injury of pulp tissue"),
            InputWidget.ParagraphWidget("4. Breakage or dislodgment in buildup or failure of restorative material."),
            InputWidget.ParagraphWidget("5. Necessity for a more extensive restoration, such as a crown, than originally diagnosed, due to additional decay or unsupported tooth structure found during preparation."),
            InputWidget.ParagraphWidget("6. Inability to exactly match tooth coloration and potential changes in the shade of the composite restoration over time as a result of the oral environment."),
            InputWidget.ParagraphWidget("7. Sensitivity of teeth to temperature or pressure."),
            InputWidget.ParagraphWidget("8. As a result of the injection or use of anesthesia, there may be swelling, jaw muscle tenderness or even resultant numbness of the tongue, lips, teeth, jaws and/or facial tissues, which is typically temporary, but in rare instances, may be permanent."),
            InputWidget.ParagraphWidget("CHANGES IN TREATMENT PLAN"),
            InputWidget.ParagraphWidget("During the course of treatment, procedures may need to be added, expanded, or changed if the dentist finds conditions that were not identified during examination and first observed during the course of treatment. Permission is hereby given to perform any additional or expanded dental services that the dentist determines to be necessary. Further, at the dentist’s discretion, I may be referred to a specialist for further treatment, the cost of which may be my responsibility."),
            InputWidget.ParagraphWidget("ALTERNATIVES TO CLINICAL PROCEDURE OR TREATMENT"),
            InputWidget.ParagraphWidget("I understand that alternative treatment is available and includes, but is not limited to, no treatment, temporary treatment, or removal of tooth. With no treatment, I can expect my condition to worsen. With removal of my teeth, I can expect other problems such as tooth drifting, supra-eruption, and traumatic bite to develop"),
            InputWidget.ParagraphWidget("RIGHT TO REFUSE TREATMENT"),
            InputWidget.ParagraphWidget("I understand that I have the right to refuse all or a portion of the proposed treatment plan recommended by the dentist after being made aware of alternate treatment options and the likely consequences of declining treatment."),
            InputWidget.ParagraphWidget("FINANCIAL IMPLICATIONS"),
            InputWidget.ParagraphWidget("The fees for this service have been explained to me and are satisfactory. I am aware of all procedures/treatments provided that are not covered by insurance or which may require full payment or co-payment."),
            InputWidget.ParagraphWidget("CONFIDENTIALITY"),
            InputWidget.ParagraphWidget("I understand that all personal and medical information shared with the clinical team will be kept confidential and shall only be used for the purposes for which they were given. I consent to the use of information in the form of radiographs, photos or videos for other purposes, such as on social media platforms, on the basis that I cannot be identified from the information released."),
            InputWidget.ParagraphWidget("I certify that I have read the contents of this form. I understand the potential risks, complications and side effects with any dental treatment or procedure and have decided to proceed with this procedure. I consent to this treatment, and I assume my responsibility to follow any post-operative instructions given to me and accept all the expenses incurred in the treatment above."),


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

