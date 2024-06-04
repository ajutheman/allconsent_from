import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class cashConsentArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  cashConsentArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text('إلي من يهمه الأمر')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("إلي من يهمه الأمر"),
          InputWidget.ParagraphWidget("اتعهد أنا الموقع أدناه  ${consentReq.patientName} نيابة عن نفسي و أشهد اننى قد أبلغت بوضوح من قبل موظفي مركز الإتحاد التشخيصي أن بطاقة التأمين خاصتى تحت تغطيه مباشرة فى مركز الإتحاد التشخيصي ولكن الفحوصات الطبيه تخضع لموافقات و بروتوكلات شركة التأمين الخاصة بى "),
          InputWidget.ParagraphWidget("لذلك أتعهد أنني لست على استعداد لانتظار موافقة أو تنفيذ البروتوكولات بوليصة التأمين الطبي الخاص بالفحوصات أوإعادة تقييم الحالة من قبل شركة التأمين لدي وأتعهد بدفع تكلفة تلك الفحوصات الطبية بكامل إرادتى الشخصية و أنا علي علم تام بأنه عند توقيع هذا التعهد و عمل الفحوصات بدون موافقة أو تنفيذ بروتوكولات بوليصة التأمين الطبي الخاص بي و لا يحق لى مطالبة مركز الإتحاد التشخيصي بالتواصل مع شركة التامين لإسترجاع المبلغ منها أو إسترداد المبلغ الدفوع من مركز الإتحاد التشخيصي ."),
          InputWidget.ParagraphWidget("لهذا أتعهد انا الموقع أدناه  بكامل قناعتي وإرادتي  الشخصية وبدون أيه ضغوط بدفع تكلفة الفحوصات الطبيه كاملة التي تم عملها بدون موافقةأوتنفيذبروتوكولاتبوليصةالتأمينالطبيالخاصة بي لمركز الإتحاد التشخيصي ."),
            
                
            ]),
        ),
      bottomNavigationBar:SizedBox(
        height: 250,
        child: Container(
          color: Colors.white,
          child: ListView(
            children:[
             InputWidget.SubTitle("توقيع المريض / ولي الأمر"),
             InputWidget.SignatureWidget(controller, consentReq, context,isArabic: true)]    
          ),
        ),
      )),
    );
  }
}
