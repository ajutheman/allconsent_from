




import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class CrownLengtheningConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  CrownLengtheningConsentFormArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text('موافقة على إجراء علاجإطالة تاج الأسنان (التطويل التاجي)')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget(" موافقة على إجراء علاجإطالة تاج الأسنان (التطويل التاجي)" ),
          InputWidget.ParagraphWidget(" أفوض الدكتو${consentReq.doctorName}__ لإجراء علاج الأسنان التالي الموصى به."),
          InputWidget.ParagraphWidget(" أدرك أنه تم تشخیصي بالمشكلة (المشكلات) التالیة:"),
          InputWidget.ParagraphWidget("أ) حشو عمیق أو كسر في السن # _______________ بالقرب من العظم والذي لا يسمح بالترمیم المناسب أو وضع التاج.ب) التاج قصیر جدًا بحیث لا يمكن وضع تاج احتكاري مناسب."),
          InputWidget.ParagraphWidget(" أدرك أن العلاجات التالیة موصى بھا:"),
          InputWidget.ParagraphWidget("أ) إجراء إطالة التاج على السن / الأسنان ___________________________________________ الذي يتضمن انعكاس سديلات الأنسجة الرخوة مصحوبة بإعادة تشكیل الأنسجة الرخوة والصلبة (العظام) تحت التخدير الموضعي."),
          InputWidget.ParagraphWidget("ب) يمكن إجراء ھذا الإجراء أيضًا تحت التخدير الفموي أو التخدير الواعي في الوريد."),
          InputWidget.ParagraphWidget("ج) قد يشمل ھذا العلاج استخدام التخدير الموضعي والمضادات الحیوية والمسكنات والخیوط الجراحیة (الغرز) وتضمید الجرح إذا لزم الأمر."),
          InputWidget.ParagraphWidget(" كما أبلغت بالعلاجات البديلة التالیة:"),
          InputWidget.ParagraphWidget("أ) لا تخضعلإطالة تاج، من الصعب عمل تاج."),
          InputWidget.ParagraphWidget("ب) لا تخضعلإطالة تاج، لا تاج."),
          InputWidget.ParagraphWidget("ج) الاستخراج بالترمیم العظمي"),
          InputWidget.ParagraphWidget(". طول فترة العلاج المتوقعة، على الرغم من أنني أدركت أنھا قد تختلف اختلافًا كبیرًا بین المرضى وقد تتأثر بمستوى التعاون والمشاركة الخاصة بي وتوافر المواعید، وقد تتأخر بسبب النكسات السريرية والتقنیة غیر المتوقعة، موضح على النحو التالي:"),
          InputWidget.ParagraphWidget(" _________________________  أ) وقت الجراحة: "),
          InputWidget.ParagraphWidget("ب) بعد العملیة: 21 ، 14 ، 7 يومًا بعد الجراحة 15 دقیقة تقريبا"),
          InputWidget.ParagraphWidget("ج) التاج النھائي: على الأقل 8-6 أسابیع بعد الجراحة ، 6 أشھر للمنطقة التجمیلیة"),
          InputWidget.ParagraphWidget(". أدرك أن المخاطر المتعلقة بالعلاجات الموصى بھا قد تشمل، على سبیل المثال ولیس حصريا، ما يلي:"),
          InputWidget.ParagraphWidget("أ) التحسس تجاه أي من منتجات الأسنان والمواد والأدوية"),
          InputWidget.ParagraphWidget("ب) النزيف"),
          InputWidget.ParagraphWidget("ج) تورم وكدمات"),
          InputWidget.ParagraphWidget("د) العدوى  والم"),
          InputWidget.ParagraphWidget("ه) التعرض لسطح العصب و / أو فرط الحساسیة لعاج الأسنان"),
          InputWidget.ParagraphWidget("و) كشف الفجوات بین الأسنان"),
          InputWidget.ParagraphWidget("ز) تعرض مفاصل التاج والجسر"),
          InputWidget.ParagraphWidget("ح) تقیید مؤقت لفتح الفم"),
          InputWidget.ParagraphWidget("ط) زيادة حركة الأسنان"),
          InputWidget.ParagraphWidget("ي) تنمل محتمل لأعصاب الأسنان (الأسنان والشفتین واللسان والخدين والحنك ...)"),
          InputWidget.ParagraphWidget(". أفھم أن رفض علاج حالتي قد يؤثر على صحة فمي وصحتي العامة. قد تشمل العواقب على سبیل المثال ولیس حصريا:"),
          InputWidget.ParagraphWidget("أ) استحالة عمل التاج"),
          InputWidget.ParagraphWidget("ب) تقدم فقدان العظام الداعمة حول السن / الأسنان"),
          InputWidget.ParagraphWidget("ج) الفقد المبكر للسن / الأسنان"),
          InputWidget.ParagraphWidget(". أفھم ضرورة الحفاظ على نظافة الفم بشكل جید من أجل شفاء أفضل وأھمیة المواعید بعد الجراحة. أفھم أيضًا أھمیة اتباع توصیات اختصاصي اللثة بدقة. قد تؤثر منتجات التبغ والكحول سلبًا على الشفاء بعد جراحات اللثة وقد تؤثر أيضًا على الحفاظ على نتائج الجراحة"),
          InputWidget.ParagraphWidget("أفھم أنني لم أحصل على أي ضمان أو ضمانات فیما يتعلق بنجاح العلاج المقترح. في معظم الحالات، يجب أن يقلل العلاج المقترح من أسباب حالة اللثة وقد يسمح لي بالحفاظ على أسناني لفترة أطول من الوقت. بسبب الاختلافات في الرعاية الذاتیةللمرضى في المنزل والصحة الطبیة، لا يمكن لأخصائي اللثة أن يتنبأ بشكل إيجابي بنجاح العلاجات المقدمة. حتى مع العلاجات المثلى، ھناك دائمًا مخاطر الفشل التي قد تتطلب إعادة العلاج. قد لا تزال مخاطر تدھور حالتي اللثوية قائمة وقد تؤدي إلى فقدان الأسنان."),
          InputWidget.ParagraphWidget(". أصرح باستخدام التصوير الفوتوغرافي و / أو التصوير الشعاعي و / أو أي وثائق أخرى تتعلق بالرعاية والعلاج اللذين تلقیتھما، لاستخدامھا في تعزيز التقدم في طب الأسنان. ومع ذلك ، لن يتم عرض ھويتي أو مناقشتھا للجمھور دون موافقتي الكتابیة."),
          InputWidget.ParagraphWidget("توقیعي أدناه يشكل إعتراف أنني شخص بالغ لايقل عمري عن 18 سنة (وفي حالة ان عمري اقل ن 18سنة والدي او الوصي القانوني علي سیوقع نیابة عني)."),
          InputWidget.ParagraphWidget("   تعلیمات ما قبل وبعد العلاج قد تم شرحھا"),
          InputWidget.ParagraphWidget("جمیع أسئلتي تم الإجابة علیھا"),
          InputWidget.ParagraphWidget("إن تغیر تاريخي الطبي أكد أنني سوف أجدد معلوماتي قبل العلاج القادم"),
          InputWidget.ParagraphWidget(" أوافق على أخذ صور فوتورافیة للمنطقة المعالجة لملفي الطبي"),
          InputWidget.ParagraphWidget("المبالغ المدفوعة للخدمات المقدمة والخدمات الغیر مستخدمة تنتھي صلاحیتھا بعد مرور عام على شرائھا وغیر قابلة للإسترداد"),
          InputWidget.ParagraphWidget("قد قرات وفھمت المعلومات حول العلاج"),

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
