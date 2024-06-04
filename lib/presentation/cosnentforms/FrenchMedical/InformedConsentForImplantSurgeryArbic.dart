

import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class InformedConsentForImplantSurgeryArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

InformedConsentForImplantSurgeryArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text('نموذج الموافقة المستنیرة لجراحة الزرع')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("نموذج الموافقة المستنیرة لجراحة الزرع " ),
          InputWidget.ParagraphWidget("◌ُقر بتفويض الطبیب المتابع لحالتي في عالجي عن طريق زرع األسنان والتركیبات االصطناعیة ا ً وفق الحتیاجاتي من األسنان على جريت النحو ن ّ بي ُ الم في الدراسات التشخیصیة و التقییمات التي أبالفعل."),
          InputWidget.ParagraphWidget("وقد ناقشت مع الطبیب المتابع لحالتي المخاطر المرتبطة بجراحة الزرع ووافقت على ھذه الجراحة. وأنا على علم بأنه في أثناء تلقي العالج قد تستجد بعض الحاالت أو الظروف التي تقتضي تعديل العالج المخطط له، وھا أنا أعطي اإلذن للطبیب في إكمال الجراحة إلى أقصى قد ر ممكن حسب تقديره."),
          InputWidget.ParagraphWidget("وقد رحت ّ لي بدائل إجراء جراحة الزرع وطقم البدلة ة السني المغروسة، بما في ذلك مخاطرھا، وا ّطلعت على الطرق البديلة للعالج، ّ لكني ارغب في إجراء جراحة الزرع وطقم البدلة ة السني المغروسة للمساعدة في تأمین أو استبدال أسناني المفقود."),
          InputWidget.ParagraphWidget("وأنا على علم بأن مجال طب األسنان وجراحه األسنان لیس مجالاًمعصوم من الخطأ، وعلیه لم م قد ُ ت لي أي ضمانات فیما يتعلق بنجاح"),
          InputWidget.ParagraphWidget("جراحة طقم البدلة ة السني المغروسة والعالج واإلجراءات المرتبطة بھا."),
          InputWidget.ParagraphWidget("وأنا على علم بأن جراحة الزرع أو تركیب طقم البدلة ة ّ السني المغروسة"),
          InputWidget.ParagraphWidget("ھي ضة ّ عر ُ م لعدم النجاح، األمر الذي قد يتطلب إجراء المزيد منالجراحات التصحیحیة أو إزالة الزرع مع الجراحة التصحیحیة المحتملةالمرتبطة باإلزالة. كما أعلم ا أي أنه ال يحق لي استرداد أتعاب عملیات"),
          InputWidget.ParagraphWidget("الزرع التي لم تنجح أو الجراحة الفاشلة، وأنه في حالة وضع زراعةأُبلغ كذلك بالمخاطر والمضاعفات المحتملة التي تنطوي علیهالجراحة واألدوية والتخدير، حیث تشمل ھذه المضاعفات الشعور باأللم"),
          InputWidget.ParagraphWidget("والتوُّرم والعدوى وتلون الجلد. وقد يحدث خدر في الشفة أو اللسان أوالذقن أو األسنان . وقد ال تكون المدة المحددة قابل للتحديد، وقد ال يمكن"),
          InputWidget.ParagraphWidget("لرجوع عنھا. وقد يحدث ا أي التھاب في الوريد، أو إصابة األسنانالحالیة، أو كسور في العظام، أو قب الجیوب األنفیة، أو تأخر الشفاء،أو الحساسیة الناجمة عن التفاعل مع المخدر أو األدوية المستخدمةوغیرھا. "),
          InputWidget.ParagraphWidget("وكما ھو الحال مع أي جراحة تركیب طقم البدلة ة ّ السني المغروسةلألسنان، ھناك مضاعفات محتملة مرتبطة بزراعة األسنان، حیث تشمل"),
          InputWidget.ParagraphWidget("ھذه المضاعفات، على سبیل المثال ال الحصر، ما يلي: مخاطر التركیب"),
          InputWidget.ParagraphWidget("غير المالئم لمكان الغرس؛ مخاطر النسداد غير المناسب؛ مخاطر قر بأنني قدت ق أر وفهم 1 و ليش تمام ما يخص جراحة الزرع رحت فضال عن تيب باستفاضة للموافقة عليها، ك بعنوان معلومات عن زرع الألسنان المتكاملة الموحدة وأوافق على إجراء هذه الجراحةالتي أعرف مخاطرها وحدودها، وسوف أتحمل المسؤوليات المالية على النحو التكل المنصوص عليه في خطاب خطة عالجي، وأقر بأنني أحسن م والقراءة والكتابة باللغة اإلنجليزية، وقد تم الرد علىجمیع أسئلتي قبل التوقیع على ھذا النموذج ."),
          
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
