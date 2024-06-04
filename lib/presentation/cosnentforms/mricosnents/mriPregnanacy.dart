import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';

class mriPregnanacy extends StatelessWidget {
  late ConsentRequestModel consentReq;
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  mriPregnanacy({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  // const screenCashConsent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MedControls.extraLargelabel("Permission and informed consent for MRI")),
      body:ListView(scrollDirection:Axis.vertical, 
          shrinkWrap: true,
          children: [    
            InputWidget.SubTitle("1. PERMISSION:"),
        InputWidget.ParagraphWidget(
            "I hereby authorize Doctor ${consentReq.doctorName.toString()} or his/her associates or his/her assistants or his/her choice Al Etihad Diagnostic Center Radiology to perform upon me an MRI requested by my ${consentReq.doctorName.toString()}."),
        InputWidget.SubTitle(
            "2. EXPLANATION OF PROCEDURE, RISKS, BENEFITS, AND ALTERNATIVES:"),
        InputWidget.ParagraphWidget(
            "The nature and purpose of the procedure has been fully explained to me and I have also been informed of expected benefits, hazards and complications, attendant discomforts and the risks that may arise to me and to my fetus."),
        InputWidget.SubTitle("3. NO GUARANTEES:"),
        InputWidget.ParagraphWidget(
            "I acknowledge that no guarantees or assurances have been made to me and my fetusconcerning the procedure described above. I give this consent voluntarily and of my own free will and I release the physician, Al Etihad Diagnostic Center Radiology, and all other persons from liability for damages as a result thereof."),
        InputWidget.SubTitle("4. UNDERSTANDING OF THE FORM:"),
        InputWidget.ParagraphWidget(
            "I confirmed that I have read this form, fully understand its contents and that all of the blank spaces above have been completed prior to my signing."),            
          ]),
          bottomNavigationBar:SizedBox(
            height: 245,                    
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputWidget.SubTitle("Patient Sign"),
                  InputWidget.SignatureWidget(controller, consentReq, context),
                ],
              ),
            
          ),
        );
        
    
  }
}
