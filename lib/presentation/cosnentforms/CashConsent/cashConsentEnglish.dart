import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class screenCashConsent extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  screenCashConsent({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Cash Consent')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
      InputWidget.TitleWidget("To whom it may concern"),
      InputWidget.ParagraphWidget(
          "I, the undersigned ${consentReq.patientName.toString()} on behalf of myself, I certify that I have been clearly informed that Al Etihad Diagnostic Center (EDC) is on direct billing with myinsurance company and services are covered but subject to insurance company protocols and approval."),
      InputWidget.ParagraphWidget(
          "This is further to certify that I’m not willing to wait for the approval or the implementation of my medical insurance policy protocols or the re-evaluation of the case by my insurance company and wish to pay for the services personally. I do understand that proceeding without insurance approval may deny me the right for refund from EDC."),
      InputWidget.ParagraphWidget(
          "I have been clearly informed that upon signing this consent, EDC will not communicate with my insurance company regarding the reimbursement as it will be self-pay."),
      InputWidget.ParagraphWidget(
          "I, authorize Al Etihad Diagnostic Center to deduct/ collect the paymentsthat I’m aware off upon my decision out of my free will away from any internal or external pressure. And I undertake to settle the full payment."),
           
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
