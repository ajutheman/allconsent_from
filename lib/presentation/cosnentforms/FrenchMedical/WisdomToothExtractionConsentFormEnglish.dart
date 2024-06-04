

import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class WisdomToothExtractionConsentEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

 WisdomToothExtractionConsentEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('WisdomToothExtractionConsentFormEnglish')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Dentist Name :${consentReq.doctorName}"),
      InputWidget.ParagraphWidget("Name of Patient :${consentReq.patientName}") ,
      InputWidget.ParagraphWidget(" File No:${consentReq.patDocNo}"),
      InputWidget.ParagraphWidget(" Date:"),
      InputWidget.ParagraphWidget("Please read and sign at the bottom of the form:") ,
      InputWidget.ParagraphWidget("DESCRIPTION AND BENEFIT OF THE PROCEDURE"),
      InputWidget.ParagraphWidget("Wisdom tooth extraction procedure is the complete removal of a wisdom tooth out of its socket due to tooth decay, impaction, periodontal complications, fracture of the tooth beyond repair, resorbed roots due to an abscess, for orthodontic purposes or for other reasons. Sutures and medicinal sponges may beplaced to aid healing.") ,
      InputWidget.ParagraphWidget("RISKS, COMPLICATIONS AND DISCOMFORTS"),
      InputWidget.ParagraphWidget("I understand that there are risks and complications associated with the administration of medications, including anesthesia, and performance of the recommended treatment. These potential risks and complications, include, but are not limited to, the following:") ,
      InputWidget.ParagraphWidget("1. Drug reactions and side effects."),
      InputWidget.ParagraphWidget("2. Loss or removal of bone during tooth extraction.") ,
      InputWidget.ParagraphWidget("3. Damage to, or fracture of, adjacent teeth or tooth restorations"),
      InputWidget.ParagraphWidget("4. Root tips may break during the extraction process. These root tips may require advanced surgical intervention or may be left in the bone to avoid more aggressive surgery") ,
      InputWidget.ParagraphWidget("5. Possible involvement of the sinus during the removal of the upper posterior teeth, which may require additional treatment or surgical repair at a later date."),
      InputWidget.ParagraphWidget("6. Weakness of the jaw due to removal of the wisdom teeth. The jaw may break during the procedure or during the healing period.") ,
      InputWidget.ParagraphWidget("7. Development of post-operative bleeding, oozing, pain, swelling and/or dry socket (a self-limiting treatable complication resulting from delayed wound healing)."),
      InputWidget.ParagraphWidget("9. Bruising and/or swelling, restricted mouth opening for") ,
      InputWidget.ParagraphWidget("10. Loss of feeling in teeth, lips, tongue and surrounding tissues due to nerve involvement which may last for an indefinite period of time"),
      InputWidget.ParagraphWidget("11. History of certain bone-related medications (such as bisphosphonates) or radiation therapy to the head/neck area for tumors/cancer increases risk for poor bone healing or osteonecrosis (bone death) that may never completely resolve.") ,
      InputWidget.ParagraphWidget("12. As a result of the injection or use of anesthesia, there may be swelling, jaw muscle tenderness or even resultant numbness of the tongue, lips, teeth, jaws and/or facial tissues, which is typically temporary, but in rare instances, may be permanent"),
      InputWidget.ParagraphWidget("CHANGES IN TREATMENT PLAN") ,
      InputWidget.ParagraphWidget("During the course of treatment, procedures may need to be added, expanded, or changed if the dentist finds conditions that were not identified during examination and first observed during the course of treatment. Permission is hereby given to perform any additional or expanded dental services that the dentist determines to be necessary. Further, at the dentist’s discretion, I may be referred to a specialist for further treatment, the cost of which may be my responsibility."),
      InputWidget.ParagraphWidget("ALTERNATIVES TO CLINICAL PROCEDURE OR TREATMENT") ,
      InputWidget.ParagraphWidget("I understand that alternative treatment is available and includes, but is not limited to, no treatment or temporary treatment. With no treatment or alternate temporary treatment, I can expect my condition to worsen"),
      InputWidget.ParagraphWidget("RIGHT TO REFUSE TREATMENT") ,
      InputWidget.ParagraphWidget("I understand that I have the right to refuse all or a portion of the proposed treatment plan recommended by the dentist after being made aware of alternate treatment options and the likely consequences of declining treatment."),
      InputWidget.ParagraphWidget("FINANCIAL IMPLICATIONS") ,
      InputWidget.ParagraphWidget("The fees for this service have been explained to me and are satisfactory. I am aware of all procedures/treatments provided that are not covered by insurance or which may require full payment or co-payment."),
      InputWidget.ParagraphWidget("CONFIDENTIALITY") ,
      InputWidget.ParagraphWidget("I understand that all personal and medical information shared with the clinical team will be kept confidential and shall only be used for the purposes for which they were given. I consent to the use of information in the form of radiographs, photos or videos for other purposes, such as on social media platforms, on the basis that I cannot be identified from the information released"),
      InputWidget.ParagraphWidget("I certify that I have read the contents of this form. I understand the potential risks, complications and side effects with any dental treatment or procedure and have decided to proceed with this procedure. I consent to this treatment, and I assume my responsibility to follow any post-operative instructions given to me and accept all the expenses incurred in the treatment above.") ,

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

