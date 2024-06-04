import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class GeneralConsent extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  GeneralConsent({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Consent form for Medical Care')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Consent Form"),
      InputWidget.SubTitle("File No : ${consentReq.patDocNo}"),
      InputWidget.SubTitle("Patient Name : ${consentReq.patientName}"),    
      InputWidget.ParagraphWidget("I, ${consentReq.patientName} am willing to receive medical care and medical services in ${consentReq.clinicName}. And I agree to follow the treatment plan that is advised by the medical team in the centre after discussing it."),
      InputWidget.ParagraphWidget("⚫ In case I want to do a treatment or a procedure, I understand that the doctor will explain to me the steps and the consequences of the treatment and the time required for it. And thereafter, I confirm that I will follow the instructions given by the Doctor."),
      InputWidget.ParagraphWidget("⚫ I understand that in case of doing certain cosmetic procedures, I will be asked to sign specific treatment guidelines papers related to this procedure."),
      InputWidget.ParagraphWidget("⚫ I confirm that I will pay the fees of the consultation and procedures."),
      InputWidget.ParagraphWidget("⚫ I know that the medical care services provided in ${consentReq.clinicName} is based on long experience and latest technologies in the medical services available in the centre."),
      InputWidget.SubTitle("Financial responsibilities:"),  
      InputWidget.SubTitle("I fully understand that I am responsible for paying the full amount for my sessions, treatments. I understand that ${consentReq.clinicName} follows a strict No Refund policy."),  
      InputWidget.ParagraphWidget("I ${consentReq.patientName}  am a competent consenting adult of at least 18 years of age (or my parent or legal guardian is giving consent on my behalf), and further:"),

      InputWidget.ParagraphWidget("⚫ Must notify the clinician if my medical history changes prior to subsequent treatments"),
      InputWidget.ParagraphWidget("⚫ There are no refunds for services rendered or/and after 6 months from purchase and not used."),
      InputWidget.ParagraphWidget("⚫ My signature below constitutes my acknowledgment and understanding of all this information"),

      InputWidget.ParagraphWidget("I hereby authorize and direct ${consentReq.clinicName}  doctors and nurses to perform consultations and treatment at all sessions attending by me , during the period of time required depending on my condition/progress."),

        ]),
    bottomNavigationBar: SizedBox(
      height: 245,
      child: Container(
        color: Colors.white,
        child: ListView(
          children:[
           InputWidget.SubTitle("Patient Signature"),
           InputWidget.SignatureWidget(controller, consentReq, context)]    
        ),
      ),
    ));
  }
}

