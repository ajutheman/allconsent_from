
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class  DentalFillingRestorativeTreatmentConsentFormArabic
 extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

   DentalFillingRestorativeTreatmentConsentFormArabic
({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text(' استمارة الموافقة على علاجات حشو الأسنان  ')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
           InputWidget.TitleWidget(" استمارة الموافقة على علاجات حشو الأسنان "),
           InputWidget.ParagraphWidget("${consentReq.doctorName}, : طبيب الأسنان"),  
           InputWidget.ParagraphWidget("   ${consentReq.patientName},  :  اسم المريض"),             
           InputWidget.ParagraphWidget(" ${consentReq.patDocNo}, :  رقم الملف "),  
           InputWidget.ParagraphWidget("يرجى القراءة والتوقيع أسفل الاستمارة"),  
           InputWidget.ParagraphWidget("وصف الإجراء وقائدنو"),  
           InputWidget.ParagraphWidget("حشو الأسنان هو إجراء يتم قيم إزالة التسوس أو الجزء التالف من السن وملء المنطقة بحشوة بديلة من أجل حماية السي ضد المزيد من الصير، واستعادة مظهر السي ووظيفته و المساعدة في تخفيف آلام الأسنان."),  
           InputWidget.ParagraphWidget("المخاطر والمضاعفات والمضايقات"),  
           InputWidget.ParagraphWidget("انفهم أن هناك مخاطر ومضاعفات مرتبطة بإعطاء الأدوية ، بما في ذلك التحذير وأداء العلاج الموصى بها تشمل : التفاعلات الدوائية والآثار الجانبية.المخاطر والمضاعفات المحتملة، على سبيل المثال لا الحصر:"),  
           InputWidget.ParagraphWidget("تضرر الأسنان المجاورة أو تركيبات الأسنان"),  
           InputWidget.ParagraphWidget("ضرورة علاج قنوات العصب بسبب لعصب بسبب إصابة أنسجة اللين"),  
           InputWidget.ParagraphWidget("كسر أأو وقوع الحشوات."),  
           InputWidget.ParagraphWidget("الحاجة إلى خطة علاجية أكبر مما تم تشخيصه في الأصل كالحاجة لتركيب الناج، بسبب التسوس الإضافي أو بنية. الأسنان الصحيفة"),  
           InputWidget.ParagraphWidget("عدم القدرة على مطابقة لون الأسباب تماما والتغيرات المحتملة في لون الحشوات بمرور الوقت نتيجة البيئة القهوية.حساسية الأسنان للحرارة أو الضغط"),  
           InputWidget.ParagraphWidget("نتيجة للحفر أو ا استخدام التحذير ، قد يكون هناك نوم أو ألم في عضلات ال الملك أو حتى تنميل ناتج عن ذلك في اللسان والشفتين والأسنان والفكين و / أو أنسجة الوجع ، وهو وهو : عادة ما يكون مؤقت،ولكن في حالات ح نادرة ، قد يكون دائم"),  
           InputWidget.ParagraphWidget("التغییرات في خطة العلاج"),  
          InputWidget.ParagraphWidget("خلال مسار العلاج ، قد یلزم إضافة الإجراءات أو توسیعھا أو تغییرھا إذا وجد طبیب الأسنان ظروفلم یتم تحدیدھا أثناء الفحص وتمت ملاحظتھا لأول مرة أثناء العلاج. ُیمنح الإذنبموجب ھذا لأداء أي خدمات أسنان إضافیة أو موسعة یقرر طبیب الأسنان أنھا ضروریة. علاوةعلى ذلك ، ووفقلتقدیر طبیب الأسنان ، قد یتم إحالتي إلى أخصائي لمزید منالعلاج ، وقد تكون التكلفة مسؤولیتي.."),  
           InputWidget.ParagraphWidget("بدائل للإجراء أو العلاج الطبي"),  
           InputWidget.ParagraphWidget("أفھم أن العلاج البدیل متاح ویشمل ، على سبیل المثال لا الحصر ، عدم المتابعة ببدأ العلاج أو علاج مؤقت أو إزالة الأسنان. بدون علاج ، أتوقع أن تسوء حالتي. مع إزالة أسناني ،أتوقع حدوث مشاكل أخرى مثل انجراف الأسنان والعضة المؤلمة."),  
           InputWidget.ParagraphWidget("الحق في رفض العلاج"),  
           InputWidget.ParagraphWidget("أفھم أن لدي الحق في رفض كل أو جزء من الإجراءات المقترحة أو خطة العلاج التي أوصى بھا طبیب الأسنان بعد إطلاعي على خیارات العلاج البدیلة والعواقب المحتملة لرفضالعلاج."),  
           InputWidget.ParagraphWidget("طریقة الدفع و المسؤولیة المالیة"),  
           InputWidget.ParagraphWidget("تم شرح رسوم ھذا العلاج/ الإجراء لي وھي ُمرضیة. أنا على درایة بجمیع الإجراءات / العلاجات المقدمة التي لا یغطیھا التأمین أو التي قد تتطلب الدفع الكامل أو الدفع المشترك."),  
           InputWidget.ParagraphWidget("سریة و حفظ المعلومات"),  
           InputWidget.ParagraphWidget("أفھم أن جمیع المعلومات الشخصیة والطبیة التي تمت مشاركتھا مع الفریق الطبي ستبقى سریة ولنُستخدم إلا للأغراض التي تم تقدیمھا من أجلھا. أوافق على استخدام المعلومات فیشكل صور إشاعیة أو صور أو مقاطع فیدیو لأغراض أخرى ، مثل منصات التواصل الاجتماعي ، على أساس أنھ لا یمكن التعرف عل ّي من المعلومات الصادرة."),  
           InputWidget.ParagraphWidget("أأقر بأنني قد قرأت محتویات ھذه الستمارة. أشھد أنني شاركت بصدق وبشكل كامل جمیع العلومات الشخصیة والطبیة الطلوبة معالفریق الطبي. أفھم الخاطر والضاعفات والثار الجانبیة الحتملة لي علج أو إجراء للسنان و أوافق على ھذا العلج ، وأتحمل.مسؤولیتي في اتباع أي تعلیمات بعد الجراء العلجي تُعطى لي وأقبل جمیع النفقات اللزمة في العلج أعلھ"),  
              
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
