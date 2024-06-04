

import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class TattooRemovalConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

TattooRemovalConsentFormArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text(' موافقة على إجراء علاج إزالة الوشم "التاتو')),
        body:  ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("  موافقة على إجراء علاج إزالة الوشم   التاتو"),
          InputWidget.ParagraphWidget("في بعض الأحيان يمكن أن يتسرب خبر الوشم حول المنطقة ويغير لونه"),
       InputWidget.ParagraphWidget("توقع على المنطقة المعالجة ظهور صقيع خلال العلاج"),
        InputWidget.ParagraphWidget("في بعض الأحيان مع استخدام الليزر لازالة الوشم او لعلاجات اخرى قد تحدث آثار جانبية كالحروق البقع أو الندبات أوالجدرة أو التصبغ بالزرقة او التصبغ الزائد وفي بعض الحالات زيادة الشعر الأبيض في الجسم."), 
        InputWidget.ParagraphWidget("الآثار الجانبية يمكن أن تشفى بعد فترة قصيرة أو في بعض الحالات قد تبقى لفترة أطول أو دائمة.إن كان لديك حشو جلدي / بوتوكس أو وشم يجب إبلاغناعدد الجلسات من منطقة لأخرى قد تختلف"), 
        InputWidget.ParagraphWidget("بعد ازالة الوشم بالليزر قد يتبقى اثره على الجلد على شكل منطقة ناقصة أو زائدة التصبغا و بقاء ندبات دائمة مع امكانية عدم زوال الوشم بشكل كامل حسب عمقه ونوعه ولونه ."),
         InputWidget.ParagraphWidget("لقد تم اعلامي بضرورة تجنب التعرض للشمس طيلة فترة العلاج وكذلك عدم التماس مع الماء لمدة يومين بعد العلاجللتقليل من احتمال حدوث المضاعفات والاختلاطات."),
          InputWidget.ParagraphWidget("وقت الجلسة يختلف من منطقة إلى أخرى ومريض الآخر"), 
          InputWidget.ParagraphWidget("بالنسبة للسيدات الحوامل فانه يفضل تأجيل استخدام الليزر لما بعد الوضع"),
           InputWidget.ParagraphWidget("يرجى ابلاغ الأخصائية اذا كان لديكم أي موعد هام أو مناسبة بفترة كافية قبل جلسة الليزر"),
            InputWidget.ParagraphWidget("النتائج لنفس المريض على مناطق مختلفة يمكن أن تكون مختلفة"), 
            InputWidget.ParagraphWidget("سيتم توفير نظارات واقية لك أثناء العلاج. قد يؤدي الفشل في ارتداء النظارات أثناء المعالجة بأكملها إلى تلف شديد ودائم للعين"),
             InputWidget.ParagraphWidget("اختيار جهاز الليزر المناسب لكل جلسة يحدد بواسطة الطبيب"), 
             InputWidget.ParagraphWidget("نتائج استخدام الليزر لازالة الوشم غير مضمونة"),
             InputWidget.ParagraphWidget("المبلغ المدفوع غير قابل للاسترداد"),
             InputWidget.ParagraphWidget("توقيعي أدناه يشكل اعتراف أنتيشخص بالغ لا يقل عمري عن 18 سنة وفي حالة ان عمري اقل من 18 سنة والدي او الوصيالقانوني على سيوقع نيابة عني"),
             InputWidget.ParagraphWidget("تعلیمات ما قبل وبعد العلاج قد تم شرحها جميع أسئلتي تم الإجابة عليها"),
             InputWidget.ParagraphWidget("إن تغير تاريخي الطبي أكد أنني سوف أجدد معلوماتي قبل العلاج القادم"),
             InputWidget.ParagraphWidget("أوافق على أخذ صور فوتورافية للمنطقة المعالجة الملفي الطبي."),
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
