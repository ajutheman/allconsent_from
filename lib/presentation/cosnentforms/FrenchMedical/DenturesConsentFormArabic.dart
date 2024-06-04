// DenturesConsentFormArabic




import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class  DenturesConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  DenturesConsentFormArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text('موافقة على إجراء علاجتركیب طقم الأسنان')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget(" موافقة على إجراء علاجتركیب طقم الأسنان" ),
          InputWidget.ParagraphWidget("أدرك أن أدوات التجمیل القابلة للإزالة (طب الأسنان الجزئي وطب الأسنان الاصطناعي الكامل) تشمل المخاطر والفشل المحتمل المرتبط بعلاج الأسنان ھذا. أوافق على تحمل تلك المخاطر والإخفاقات المحتملة المرتبطة، على سبیل المثال ولیس حصريا، بما يلي"),
          InputWidget.ParagraphWidget("(على الرغم من توخي أقصى درجات العناية والاجتھاد في تحضیر وتصنیع الأجھزة التعويضیة، إلا أن ھناك احتمال فشل مع المرضى لا التكیف معھم)  "),
          InputWidget.ParagraphWidget(". فشل تركیب طقم الأسنان الكامل: ھناك العديد من المتغیرات التي قد تساھم في ھذا الاحتمال، مثل: أنسجة اللثة التي لا تتحمل الضغط علیھا مما يؤدي إلى ضعف مفرط وبقع مؤلمة."),
          InputWidget.ParagraphWidget("أ) حواف الفك التي قد لا توفر الدعم الكافي و / أو الاحتفاظ"),
          InputWidget.ParagraphWidget("ب) الجھاز العضلي في اللسان، وأرضیة الفم، والخدين، وما إلى ذلك، والتي قد لا تتكیف مع الأجھزة الصناعیة ولا تكونقادرة على استیعابھا"),
          InputWidget.ParagraphWidget("ج) ردود الفعل المفرطة في التقیؤ."),
          InputWidget.ParagraphWidget("د) اللعاب المفرط أو جفاف الفم المفرط"),
          InputWidget.ParagraphWidget("ه) مشاكل نفسیة و / أو جسدية عامة تتدخل في النجاح."),

           InputWidget.ParagraphWidget(". فشل أطقم الأسنان الجزئیة: قد تساھم العديد من المتغیرات في عدم نجاح استخدام أطقم الأسنان الجزئیة (الجسور القابلة للإزالة). قد تشمل المتغیرات تلك المشكلات المتعلقة بفشل طقم الأسنان الكامل، بالإضافة إلى:"),
          InputWidget.ParagraphWidget("أ) الأسنان الطبیعیة التي تثبت علیھا أطقم الأسنان الجزئیة (تسمى أسنان الدعامة) قد تصبح طرية و / أو مؤلمة و / أو متحركة"),
          InputWidget.ParagraphWidget("ب) الأسنان الداعمة قد تتآكل أو تتآكل حول المشابك أو المرفقات"),
          InputWidget.ParagraphWidget("ج) قد تفشل الأنسجة الداعمة للأسنان الداعمة."),
          InputWidget.ParagraphWidget("الكسر: بسبب أنواع المواد اللازمة في بناء ھذه الأجھزة، قد يحدث الكسر على الرغم من أن المواد المستخدمة لم تكن معیبة. العوامل التي قد تسھم في الكسر ھي:"),
           InputWidget.ParagraphWidget("أ) مضغ الأطعمة أو الأشیاء شديدة الصلابة"),
          InputWidget.ParagraphWidget("ب) انكماش أنسجة اللثة الذي يسبب ضغوطًا مفرطة بشكل غیر متساو على أطقم الأسنان"),
          InputWidget.ParagraphWidget("ج) الشقوق التي قد تكون غیر ملحوظة والتي حدثت سابقًا لأسباب مثل تلك المذكورة في (1) و (2) ؛ أو سقوط أطقم الأسنان أو تلفھا سابقًا. ما سبق قد يتسبب أيضًا في تآكل أو تقطیع الأسنان."),
          InputWidget.ParagraphWidget(". أطقم الأسنان الفضفاضة: عادة ما تصبح أطقم الأسنان الكاملة أكثر مرونة عند حدوث تغییرات في أنسجة اللثة الداعمة. أطقم الأسنان نفسھا لا تتغیر إلا إذا تعرضت للحرارة الشديدة أو الجفاف. عندما تصبح أطقم الأسنان فضفاضة، فقد يكون من الضروري تبطینھا. عادة، من الضروري تحصیل رسوم لتبطین أطقم الأسنان. تصبح أطقم الأسنان الجزئیة فضفاضة للأسباب المذكورة بالإضافة إلى فك المشابك أو المرفقات الأخرى. تشعر أطقم الأسنان أحیانًا بالارتخاء لأسباب أخرى."),
          InputWidget.ParagraphWidget("الحساسیة لمواد طب الأسنان: في حالات نادرة جدًا، قد تظھر على أنسجة الفم أعراض حساسیة تجاه المواد المستخدمة في تصنیع أطقم الأسنان الجزئیة أو أطقم الأسنان الكاملة، والتي لا نملك السیطرة علیھا."),
           InputWidget.ParagraphWidget(". فشل دعم الأسنان و / أو الأنسجة الرخوة: قد تفشل الأجزاء الداعمة للأسنان الطبیعیة بسبب التسوس. صدمة مفرطة مشاكل أنسجة اللثة أو الأنسجة العظمیة. ھذا قد يستلزم الاستخراج. قد تفشل الأنسجة الرخوة الداعمة بسبب العديد من المشاكل بما في ذلك ضعف الأسنان أو الصحة العامة."),
          InputWidget.ParagraphWidget("تقع على عاتق المريض مسؤولیة التماس الانتباه عند حدوث المشاكل وعدم التقلیل منھا في فترة زمنیة معقولة؛ أيضالفحصھا بانتظام لتقییم أطقم الأسنان وحالة اللثة وصحة فم المريض."),
          InputWidget.ParagraphWidget("توقیعي أدناه يشكل إعتراف أنني شخص بالغ لايقل عمري عن 18 سنة (وفي حالة ان عمري اقل ن 18سنة والدي او الوصي القانوني علي سیوقع نیابة عني)."),
          InputWidget.ParagraphWidget("   تعلیمات ما قبل وبعد العلاج قد تم شرحھا"),
          InputWidget.ParagraphWidget("جمیع أسئلتي تم الإجابة علیھا"),
           InputWidget.ParagraphWidget("إن تغير تاريخي الطبي أكد أنني سوف أجدد معلوماتي قبل العلاج القادم"),
          InputWidget.ParagraphWidget("   أوافق على أخذ صور فوتورافیة للمنطقة المعالجة لملفي الطبي."),
          InputWidget.ParagraphWidget("  المبالغ المدفوعة للخدمات المقدمة والخدمات الغیر مستخدمة تنتھي صلاحیتھا بعد مرور عام على شرائھا وغیر قابلة  للاسترداد"),
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
