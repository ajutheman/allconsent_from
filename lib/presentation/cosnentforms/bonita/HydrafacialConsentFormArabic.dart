
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class HydrafacialConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

HydrafacialConsentFormArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text(' موافقة على علاج الهيرا فيشل')),
        body:  ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("موافقة على علاج الهيرا فيشل"),
          InputWidget.ParagraphWidget("موافقة على علاج الهيرا فيشل"),
          InputWidget.ParagraphWidget("قد تواجه بشرتك تهيج مؤقت أو ضيق أو احمرار."),
          InputWidget.ParagraphWidget("يختلف نتائج العلاج من مريض إلى آخر."),
          InputWidget.ParagraphWidget("من المرجح أن ترى النتائج فورا بعد العلاج وقد تشعر بشرتك بالنعومة والرطوبة"),
          InputWidget.ParagraphWidget("تجنب التعرض لأشعة الشمس بشكل مفرط واستخدام واقيا من الشمس."),
          InputWidget.ParagraphWidget("سان جنب استخدام مواد تقشير البشرة والشمع والمنتجات التي تحتوي على أحماض جليكوليكية أو رينبول التي لا تعتبر جزءا من النظام الموصى به للحفاظ على نتائج العالج لمدة أسبوعين قبل وبعد العلاج"),
          InputWidget.ParagraphWidget("أي موانع طبية سوف تلغي هذا العرض والعلاج"),
          InputWidget.ParagraphWidget("أي موانع طبية سوف تلغي هذا العرض والعلاج")
        ,
           InputWidget.ParagraphWidget("يمنع استرداد المبالغ المدفوعة عند تشغيل الجهاز"), 
             InputWidget.ParagraphWidget("المواعيد متاحة على حسب تنظيم الجهاز"),  
              InputWidget.ParagraphWidget("توقيعي أدناه يشكل اعتراف أننيشخص بالغ لا يقل عمري عن 18 سنة وفي حالة ان عمري اقل من 18 سنة والدي او الوصي"),
 InputWidget.ParagraphWidget("القانوني على سيوقع نيابة عني"),
  InputWidget.ParagraphWidget("تعلیمات ما قبل وبعد العلاج قد تم شرحها"), 
  InputWidget.ParagraphWidget("جميع أسئلتي تم الإجابة عليها"), 
  InputWidget.ParagraphWidget("إن تغير تاريخي الطبي أكد أنني سوف أجدد معلوماتي قبل العلاج القادم"),
   InputWidget.ParagraphWidget("أوافق على أخذ صور فوتورافية للمنطقة المعالجة الملفي الطبي"),
    InputWidget.ParagraphWidget("المبالغ المدفوعة للخدمات المقدمة والخدمات الغير مستخدمة تنتهي صلاحيتها بعد مرور عام على شرائها وغير قابلة للإسترداد"),
     InputWidget.ParagraphWidget("قد قرات وفهمت المعلومات حول العلاج"),
      
            ]),
        
      bottomNavigationBar:SizedBox(
        height: 250,
        child: Container(
          color: Colors.white,
          child: ListView(
            children:[
             InputWidget.FormLabel(": إسم المريض"),
             InputWidget.FormLabel("${consentReq.patientName},"),
             InputWidget.SignatureWidget(controller, consentReq, context),
        
             ]    
             
          ),
        ),
      )),
    );
  }
}
