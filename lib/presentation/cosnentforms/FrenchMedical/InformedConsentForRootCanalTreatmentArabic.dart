

import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class RootCanalConsentArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  RootCanalConsentArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text('انموذج الموافقة المستنيرة لعالج قناة الجد')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("انموذج الموافقة المستنيرة لعالج قناة الجد" ),
          InputWidget.ParagraphWidget("الهدف من عالج قناة الجذر هو إنقاذ السنان التي قد ل تتطلب الإلزالة . وعلى الرغم من ارتفاع نسبة نجاح عالج قناة الجذر إلى حد كبير، إل أنه يُعد عال جال يمكن ضمان نتائجه كما هو الحال في جميع العالجات الطبية وعالج االسنان. وعالوة على ذلك، قد يُقدم عالج قناة الجذر بهدف تصحيح مشكلة واضحة ثم تظهر في بعض اللحيان مشكلة غير واضحة، أو غير مش خصة أو خفية."),
          InputWidget.ParagraphWidget("وهذا العالج لن يمنع تسوس األسنان مستقب ال أو كسرالسنان أو أمراض اللثة، بل قد ت تحتاج أحيانا األستان التي خضعت لعالج قناة الجذر إلى إعادة الخضوع للعالج أو جراحةالحشو أو إزالة األسنان ."),
          InputWidget.ParagraphWidget(":المخاطر "),
          InputWidget.ParagraphWidget("فيما يلي على سبيل المثال لا الحصر بعض المخاطر غيرالمحتملة، لكنها ممكنة الحدوث. "),
          InputWidget.ParagraphWidget(" انفصال الجهاز في القناة"),
          InputWidget.ParagraphWidget("تثقيب( فتحات إضافية ) القناة مع االجهزة"),
          InputWidget.ParagraphWidget("وجود قنوات الجذور المسدودة التي ل يمكن إكمالهابشكل مثالي"),
          InputWidget.ParagraphWidget(". عدم اكتمال الشفاء"),
          InputWidget.ParagraphWidget("عدوى ما بعد العملية الجراحية التي تتطلب عال جا إضافياأو استخدام"),
          InputWidget.ParagraphWidget("المضادات الحيوية"),
          InputWidget.ParagraphWidget("كسر السنان أو كسر الجذر الذي يتطلب إلزالة"),
          InputWidget.ParagraphWidget("الكسر أو القطع أو التخفيف من السنان الموجودة أو رأسها فقط"),
          InputWidget.ParagraphWidget(" . عدم الشعور بالراحة بعد العالج"),
          InputWidget.ParagraphWidget(". الخدر المؤقت أو الدائم"),
          InputWidget.ParagraphWidget("التغير في العضة أو الفك أو الصعوبة المشتركة فيما بينهم ) مشکالت"),
          InputWidget.ParagraphWidget(". قد تحدث مشاكل طبية إذا لم يكن لدي قناة جذر مكتملة"),
          InputWidget.ParagraphWidget("ردود فعل على التخدير أو المواد الكيميائية أو األدوية"),
          InputWidget.ParagraphWidget("خيارات العالج الألخرى"),
          InputWidget.ParagraphWidget("قد تكون خيارات العالج الألخرى التالية ممكنة"),
          InputWidget.ParagraphWidget(". عدم الخضوع للعالج على اإلطالق"),
          InputWidget.ParagraphWidget("النتظار لحدوث مزيد من التطور النهائي لألعراض"),
          InputWidget.ParagraphWidget("الإلزالة : ليجري الستبدال بدون أي شيء أو بطقم أسنانأو بجسر أو"),
          InputWidget.ParagraphWidget("زرع"),
          InputWidget.ParagraphWidget("بعد النتهاء من عملية قناة الجذر، سوف تح ول مرة أخرى إلى أخصائي العمليات التصالحية لستعادة الوضع الدائم(الملء، والتاج، والغطاء). الفشل في استعادة االسنانبشكل صحيح في الوقت المناسب في غضون 30 يومابوجه عام يزيد بشكل كبير من امكانية فشل عملية قناةالجذر أو كسر الألسنان . تيحت لي الفرصة لطرح الألسئلةعلى طبيبي المعالج، وأنا راض تماما عن وا بأنني حسنالألجوبة التي تلقيتها، قرأم التكل والقراءة والكتابة باللغة النجليزية، وقد تم الرد على جميع اسئلتي قبل التوقيع علىهذا النموذج ."),
          InputWidget.ParagraphWidget(""),
          InputWidget.ParagraphWidget(""),
            ]),
        ),
      bottomNavigationBar:SizedBox(
        height: 250,
        child: Container(
          color: Colors.white,
          child: ListView(
            children:[

             InputWidget.SubTitle("${consentReq.patientName}: إسم المريض"),
             InputWidget.SignatureWidget(controller, consentReq, context,isArabic: true),
                 
             ]   
             
          ),
        ),
      )),
    );
  }
}
