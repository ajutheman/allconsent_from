import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class AyurmanaConsent extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  AyurmanaConsent({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Ayurmana')),
      body: Scrollbar(
        thumbVisibility:true,
        child: ListView(          
          scrollDirection:Axis.vertical,
          shrinkWrap: true, children: [
        InputWidget.TitleWidget("To whom it may concern"),
        InputWidget.ParagraphWidget(
            "I, the undersigned ${consentReq.doctorName.toString()} on behalf of myself, I certify that I have been clearly informed that Al Etihad Diagnostic Center (EDC) is on direct billing with myinsurance company and services are covered but subject to insurance company protocols and approval."),
        InputWidget.ParagraphWidget(
            "This is further to certify that I’m not willing to wait for the approval or the implementation of my medical insurance policy protocols or the re-evaluation of the case by my insurance company and wish to pay for the services personally. I do understand that proceeding without insurance approval may deny me the right for refund from EDC."),
        InputWidget.ParagraphWidget(
            "I have been clearly informed that upon signing this consent, EDC will not communicate with my insurance company regarding the reimbursement as it will be self-pay."),
        InputWidget.ParagraphWidget(
            "I, authorize Al Etihad Diagnostic Center to deduct/ collect the paymentsthat I’m aware off upon my decision out of my free will away from any internal or external pressure. And I undertake to settle the full payment."),
        InputWidget.TitleWidget("إلي من يهمه الأمر"),
        InputWidget.ParagraphWidget(
            "اتعهد أنا الموقع أدناه  ${consentReq.doctorName.toString()} نيابة عن نفسي و أشهد اننى قد أبلغت بوضوح من قبل موظفي مركز الإتحاد التشخيصي أن بطاقة التأمين خاصتى تحت تغطيه مباشرة فى مركز الإتحاد التشخيصي ولكن الفحوصات الطبيه تخضع لموافقات و بروتوكلات شركة التأمين الخاصة بى."),
        InputWidget.ParagraphWidget(
            "لذلك اتعهد انني لست على استعداد لانتظار موافقه او تنفيذ البروتوكولات بوليصه التامين الطبي الخاص بالفحوصات او اعاده تقييم الحاله من قبل شركة التامين لدي واتعهد بدفع تكلفه تللك الفحوصات الطبية بكامل ارادتي الشخصيه وانا علي علم تام بانه عند توقيع هذا التعهد وعمل الفحوصات بدون موافقه او تنفيذ بروتوكولات بوليصه التامين الطبي الخاص بي لا يحق لي مطالبة مركز الإتحاد التشخيصي بالتواصل مع شركة التامين لإسترجاع المبلغ منها أو إسترداد المبلغ الدفوع من مركز الإتحاد التشخيصي ."),
        InputWidget.ParagraphWidget(
            "لهذا أتعهد انا الموقع أدناه  بكامل قناعتي وإرادتي  الشخصية وبدون أيه ضغوط بدفع تكلفة الفحوصات الطبيه كاملة التي تم عملها بدون موافقة أوتنفيذ بروتوكولات بوليصة التأمين الطبي الخاصة بي لمركز الإتحاد التشخيصي "),
           
          ]),
      ),
    bottomNavigationBar:Container(
      height: 210,
      child: Container(
        color: MedColors.outlineButtonColor,
        child: ListView(
          children:[
           InputWidget.SubTitle("Patient Signature"),
           InputWidget.SignatureWidget(controller, consentReq, context)]    
        ),
      ),
    ));
  }
}
