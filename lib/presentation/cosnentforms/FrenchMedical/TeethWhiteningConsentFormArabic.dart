
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class  TeethWhiteningArabic
 extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

   TeethWhiteningArabic
({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text('  موافقة على إجراء علاجتبيض الأسنان  ')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("  موافقة على إجراء علاجتبيض الأسنان"),
          InputWidget.ParagraphWidget(" لا يمكن إجراء التبييض إلا في الفم السليم. سنقيم فمك للتأكد من أنه سليم قبل البدء. ومع ذلك، إذا كان لديك أي ألم أو مخاوف أخرى تتعلق بصحة فمك، فيرجى التحدث إلينا بخصوص هذا الأمر"),
     InputWidget.ParagraphWidget("نستخدم بيروكسيد الهيدروجين لتبييض أسنانك بالمستويات المسموح بها قانونا. سوف تستخدم صواني التبييض المصممةخصيصاً لفمك في هذا الإجراء. إذا فقدت هذه الأدراج أو أتلفتها، فستكون هناك تكلفة إضافية لاستبدالها."),  
     InputWidget.ParagraphWidget("تقع على عاتقك مسؤولية اتباع التعليمات التي قدمناها لك "), 
      InputWidget.ParagraphWidget("لا توجد ضمانات لدرجة تبييض أسنانك وكمية التبييض تختلف باختلاف الفرد "),
        InputWidget.ParagraphWidget(". سوف يستغرق تبييض أسنانك حوالي أسبوعين، ومع ذلك قد ترغب في تبييض أسنانك لفترة أطول إذا لم تتحقق النتائجالمرجوة خلال هذه الفترة الزمنية "),  
        InputWidget.ParagraphWidget(" سنزودك بصواني التبييض ومادة التبييض تكفي لمدة أسبوعين. إذا لم تتحقق النتائج المرجوة، فسيتعين عليك شراء مبيضإضافي بتكلفة إضافية."), 
         InputWidget.ParagraphWidget(" تقع على عاتقك مسؤولية إبلاغنا إذا كنت حاملاً أو مرضعة أو لديك أي حساسية / حساسية معروفة تجاه أي من منتجاتالتبييض."), 
          InputWidget.ParagraphWidget(". لن يتم تبييض أي تيجان أو جسور أو مواد حشو في أسنانك وقد تتطلب الاستبدال بعد إجراء التبييض، والذي لا يتم تضمينرسومه في تكلفة علاج التبييض "), 
           InputWidget.ParagraphWidget(" من المحتمل أن تعاني من حساسية خفيفة خاصة في الأيام القليلة الأولى. ننصحك باستخدام معجون أسنان مضاد. للحساسية أثناء العلاج"), 
            InputWidget.ParagraphWidget(" . تأكد من مسح المادة المبيضة الفائضة من على اللثة أو قد يحدث تهيج في اللثة"), 
             InputWidget.ParagraphWidget(". ننصحك بالامتناع عن الأطعمة أو المشروبات الحمراء والتدخين والشاي والقهوة والكاري أثناء العلاج لأن ذلك سيعيق تقدمعملية التبييض سيحدد استهلاك ما سبق ذكره أيضًا المدة التي ستبقى فيها الأسنان الظل المطلوب. "), 
              InputWidget.ParagraphWidget("توقيعي أدناه يشكل اعتراف أنني شخص بالغ لا يقل عمري عن 18 سنة وفي حالة ان عمري اقل من 18 سنة والدي او الوصيالقانوني على سيوقع نيابة عني). "),
                InputWidget.ParagraphWidget(" تعليمات ما قبل وبعد العلاج قد تم شرحها"), 
                 InputWidget.ParagraphWidget(" جميع أسئلتي تم الإجابة عليها"), 
                  InputWidget.ParagraphWidget("إن تغير تاريخي الطبي أكد أنني سوف أجدد معلوماتي قبل العلاج القادم "),
                    InputWidget.ParagraphWidget(" أوافق على أخذ صور فوتورافية للمنطقة المعالجة الملفي الطبي"),
                      InputWidget.ParagraphWidget("المبالغ المدفوعة للخدمات المقدمة والخدمات الغير مستخدمة تنتهي صلاحيتها بعد مرور عام على شرائها وغير قابلة للإسترداد "), 
                       InputWidget.ParagraphWidget(" قد قرات وفهمت المعلومات حول العلاج"),  
                      
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
