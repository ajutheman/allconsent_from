
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class HAFillerConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  HAFillerConsentFormArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text(' موافقة على اجراء تعبئة بالحقن')),
        body:  ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("موافقة على اجراء تعبئة بالحقن" ),
          InputWidget.ParagraphWidget("أوافق على إجراء علاج حقن التعبئة ( التملئة ( بحامض الهيالوروني حيث يتم حقن الجل في مناطق من الوجه ) كالخدين والثلم الأنفي الفموي ( حسب الحالة لتخفيف التجاعيد وتحسين المظهر كما يستخدم هذا الحامض لتحسين شكل الشفاه حسب الرغبة"),
          InputWidget.ParagraphWidget("يمكن الحصول على نتائج جيدة وواضحة بعد جلسة واحدة من العلاج وتستمر لعدة أشهر (وسطيا 3-6 أشهر) حسب الجل المستخدم وحسب طبيعة الجسم حيث تختلف النتائج من شخص لآخر ."),
InputWidget.ParagraphWidget("تستمر الجلسة لمدة 30 دقيقة وحسب المنطقة المعالجة وسأشعر بوخز وألم خفيف أثناء حقن الابر ويمكن استخدام مخدر موضعي أو مرهم خاص بالتخدير للتخفيف من الشعور بالألم ."),
InputWidget.ParagraphWidget("الأعراض الجانبية لهذا الاجراء نادرة الحدوث، بعضها وليس من الضروري أن تكون محصورة بمايلي: ومنها احمرار وتحسس) ونادراً فرط : تحسس تفاعلات أرجية ) و والالتهاب وأحيانا | ا ازرقاق وتورم في . منطقة الحقن أو : تشكل كتل صغيرة (حبيبومات)تحت الجلد تزول عادة بعد أسابيع من العلاج تبعاً لطبيعة جلد الشخص المعالج"),
InputWidget.ParagraphWidget("  الهدف من هذا الاجراء هو زيادة حجم أجزاء من الوجه أو تحسين شكل الشفاه. كما أنني على دراية بأن درجة الفائدة تختلف من شخص لآخر وتعتمد على قابلية استجابة) الفرد للعلاج ."),
InputWidget.ParagraphWidget("وقد تفهمت بانه من الضروري إخبار الطبيب عن أي أدوية أقوم بتناولها أو امراض اعاني منها والتي يمكن أن تتعارض مع هذا العلاج وتتسبب باختلاطات أو بأعراض جانبية غير مرغوبة."),
InputWidget.ParagraphWidget("كما أنه من الضروري عدم وضع أي كريم أو مستحضر تجميلي مهما يكن بعد اجراء الجلسة لمدة يومين على الأقل تجنيا الحدوث الانتان والاختلاطات."),
InputWidget.ParagraphWidget("كما أنه لا ينصح باجراء هذا العلاج للحوامل و للذين لديهم قصة تحسس سابق للعلاج بالحقن أو سبق واجروا الحقن بمواد غير معروفة"),
InputWidget.ParagraphWidget("توقيعي أدناه يشكل اعتراف أنني شخص بالغ لا يقل عمري عن 18 سنة وفي حالة ان عمري اقل من 18 سنة والدي او الوصي القانوني على سيوقع نيابة عني)"),
InputWidget.ParagraphWidget("تعلیمات ما قبل وبعد العلاج قد تم شرحها"),
InputWidget.ParagraphWidget("جميع أسئلتي تم الإجابة عليها"),
InputWidget.ParagraphWidget("إن تغير تاريخي الطبي أكد أنني سوف أجدد معلوماتي قبل العلاج القادم"),
InputWidget.ParagraphWidget("أوافق على أخذ صور فوتورافية للمنطقة المعالجة لملفي الطبي."),
InputWidget.ParagraphWidget("المبالغ المدفوعة للخدمات المقدمة والخدمات الغير مستخدمة تنتهي صلاحيتها بعد مرور عام على شرائها وغير قابلة للإسترداد"),
InputWidget.ParagraphWidget("المبالغ المدفوعة للخدمات المقدمة والخدمات الغير مستخدمة تنتهي صلاحيتها بعد مرور عام على شرائها وغير قابلة للإسترداد"),

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
