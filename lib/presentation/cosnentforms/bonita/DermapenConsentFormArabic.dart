
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class DermapenConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  DermapenConsentFormArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text(' نموذج الموافقة على إجراء علاحد پر مابین')),
        body: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("نموذج الموافقة على إجراء علاحد پر مابین"  ),
          InputWidget.ParagraphWidget(" أنا……..  أؤكد أن المعالج المرخص في عيادة سانسايا قد أخبرني بحالة بشرتي والعلاج المقترحبما في ذلك الفوائد والمخاطر المحتملة التي تنطوي عليها"),
          InputWidget.ParagraphWidget("أؤكد أنني طلبت علاج ديرمابين لمحاولة تحسين خطوط تعبيرات وجهي ولون بشرتي وملمسها و / أو ندبات.")  ,
          InputWidget.ParagraphWidget(" اقربان . هذا العلاج ليس علما دقيقا . ولا يمكن تقديم أي ضمانات بشأن النتائج المتوقعة.")  ,
          InputWidget.ParagraphWidget("أدرك أن : عدة مواعيد قد تكون ضرورية . للوصول إلى النتائج المرجوة.")  ,
          InputWidget.ParagraphWidget("عدة مواعيد قد تكون ضرورية . للوصول إلى النتائج المرجوة. أن المخاطر")  ,
          InputWidget.ParagraphWidget(" افهم أن المخاطر والآثار الجانبية والمضاعفات عادة ما : تكون ضئيلة ")  ,
          InputWidget.ParagraphWidget("في بعض الأحيان قد أ اعاني من احمرار و احمرار ونزيف وتندب مؤقت وجفاف و / أو عدم راحة.. تم إخطاري بالمخاطر التي ينطوي عليها العلاج، والفوائد المتوقعة، والعلاجات البديلة، بما في ذلك عدم العلاج على الإطلاق. أوافق على . أن هذا العلاج كاملا، وأنه يبطل أي ! ")  ,
          InputWidget.ParagraphWidget("افصاحات شفهية أو كتابية سابقة إن وجد. أشهد أنني قد قرأت، وأنني أتيحت لي الفرصة الكافية للمناقشة وطرح الأسئلة. أوافق على هذا الإجراء اليوم وعلى جميع العلاجات اللاحقة. توقيعي أدناه بشكل إعتراف أنني شخص بالغ لا يقل عمري عن 18 سنة وفي حالة ")  ,
          InputWidget.ParagraphWidget("انعمري اقل من 18 سنة والدي او الوصيالقانوني على سيوقع نيابة عني")  ,
          InputWidget.ParagraphWidget("تعلیمات ما قبل وبعد العلاج قد تم شرحها")  ,
          InputWidget.ParagraphWidget("جميع أسئلتي تم الإجابة عليها")  ,
          InputWidget.ParagraphWidget("ان تغير تاريخي الطبي أكد أنني سوف أجدد معلوماتي قبل العلاج القادم")  ,
          InputWidget.ParagraphWidget(" أوافق على أخذ صور فوتورافية للمنطقة المعالجة الملفي الطبي")  ,
          InputWidget.ParagraphWidget("المبالغ المدفوعة للخدمات المقدمة والخدمات الغير مستخدمة تنتهي صلاحيتها بعد مرور عام على شرائها وغير قابلة للإسترداد")  ,
          InputWidget.ParagraphWidget("قد قرات وفهمت المعلومات حول العلاج")  ,

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
