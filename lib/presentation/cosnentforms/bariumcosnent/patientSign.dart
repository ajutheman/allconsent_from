import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class  patientSign extends StatelessWidget {
  late ConsentRequestModel consentReq;
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  patientSign({super.key, required ConsentRequest}) {
    consentReq = ConsentRequest;
  }

  // const screenCashConsent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MedControls.extraLargelabel("Patient data verification")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InputWidget.TitleWidget("Data verification"),
            InputWidget.SubTitle("I have verified all of my personal data that I provided here, and it is accurate to the best of my knowledge."),
          
          ]),
        )),
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
            
          ) 
      );
    
  }
}
