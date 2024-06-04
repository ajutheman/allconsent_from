
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class BotoxConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  BotoxConsentFormArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text('موافقة على اجراء حقن البوتوكس')),
        body:  ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("موافقة على اجراء حقن البوتوكس"),
          InputWidget.ParagraphWidget("أ ${consentReq.patientName}   وافق على اجراء حقن البوتوكس والتي تؤدي لإضعاف العضلات بشكل مؤقت وتستخدم لعلاج التجاعید الحركیة بین الحاجبین والجبین (الجبھة) وجوانب العیون"),
          InputWidget.ParagraphWidget(" كما أنھا يمكن ان تستخدم لعلاج التعرق الزائد تحت الابط وفي راحة الكفین والقدمین ولعلاج الصداع ( الشقیقة )."),
          InputWidget.ParagraphWidget("يمكن الحصول على نتائج جیدة بعد جلسة واحدة وتكون أكثر وضوحا بعد 1 4 – 7 أيام من العلاج وتستمر من3– 6 أشھر"),
          InputWidget.ParagraphWidget(" سأشعر بوخز خفیف أثناء حقن الابر. وسوف أتجنب الاستلقاء لمدة 4 ساعات بعد ھذا الاجراء و لا ينصح بعمل أي مساج للوجه لمدة 24 ساعة على  الأقل بعد العلاج"),
          InputWidget.ParagraphWidget("الأعراض الجانبیة لھذا العلاج نادرة الحدوث ومنھا ترھل مؤقت للحواجب والاجفان . ووذمة وتكدم يدوم لعدة ايام وفي حالات الحساسیة النادرة يمكن أن تزيد نسبة الدموع في العیون (أن تدمع العیون بكثرة) وتكون الرؤية غیر واضحة (مزدوجة) لفترة أسبوعین أو أكثر.وفي بعض الحالات قد تكون نتائج العلاج أقل بالمرات التالیة مقارنة للمرة الاولى وھذا يفسر نتیجة تشكل اضداد لمادة البوتوكس مما يخفف تأثیرھا مع تكرارالعلاج عند بعض الاشخاص"),
          InputWidget.ParagraphWidget(" الھدف من حقن البوتكس ھو معالجة التجاعید الحركیة الناجمة عن حركة العضلات ولیس لعلاج التجاعید الجلدية العمیقة ( الثابتة ) أو الناجمة عن ترھل الجلد وأنا على دراية أن الفائدة تختلف من شخص لآخر و تعتمد على طبیعة الجلد و قابلیة (استجابة) الفرد للعلاج"),
          InputWidget.ParagraphWidget(" لا ينصح بھذا العلاج للنساء الحوامل و كذلك للذين يعانون من ضعف في العضلات أو سبق وأن حدث لديھم تحسس لمادة البوتوكس"),
          InputWidget.ParagraphWidget(" كما أتفھم توجب إعلام الطبیب القائم على ھذا العلاج بأي أدوية أو أمراض أعاني منھا والتي يمكن أن تسبب حساسیة مفرطة وتتعارض مع العلاج بالبوتوكس"),
          InputWidget.ParagraphWidget("توقیعي أدناه يشكل إعتراف أنني شخص بالغ لايقل عمري عن 18 سنة (وفي حالة ان عمري اقل ن 18سنة والدي او الوصي )القانوني علي سیوقع نیابة عني"),
          InputWidget.ParagraphWidget(" تعلیمات ما قبل وبعد العلاج قد تم شرحھا"),
          InputWidget.ParagraphWidget("جمیع أسئلتي تم الإجابة علیھا"),
          InputWidget.ParagraphWidget(" إن تغیر تاريخي الطبي أكد أنني سوف أجدد معلوماتي قبل العلاج القادم "),
          InputWidget.ParagraphWidget("أوافق على أخذ صور فوتورافیة للمنطقة المعالجة لملفي الطبي"),
          InputWidget.ParagraphWidget(" المبالغ المدفوعة للخدمات المقدمة والخدمات الغیر مستخدمة تنتھي صلاحیتھا بعد مرور عام على شرائھا وغیر قابلة للإسترداد"),
          InputWidget.ParagraphWidget(" قد قرات وفھمت المعلومات حول العلاج"),
   
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
