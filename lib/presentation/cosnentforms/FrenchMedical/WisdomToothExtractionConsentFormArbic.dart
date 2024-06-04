



import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class  WisdomToothExtractionArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

   WisdomToothExtractionArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text('استمارة الموافقة على علاجات قلع ضروس العقل و القلع الجراحي')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("استمارة الموافقة على علاجات قلع ضروس العقل و القلع الجراحي " ),
                InputWidget.TitleWidget("${consentReq.doctorName},  طبیب الأسنان"),
InputWidget.ParagraphWidget(":${consentReq.patientName} ,  اسم المریض   ") ,
InputWidget.ParagraphWidget("${consentReq.patDocNo} ,    السن     "),

InputWidget.ParagraphWidget("التاریخ"),
          InputWidget.ParagraphWidget("یرجى القراءة والتوقیع أسفل الاستمارة"),
          InputWidget.ParagraphWidget("وصف الإجراء وفائدتھ"),
          InputWidget.ParagraphWidget("إجراء قلع ضرس العقل ھو الإزالة الكاملة لضرس العقل من الفك بسبب تسوس الأسنان ، والانحشار ، ومضاعفات اللثة، وكسر السن الذي یتعذر إصلاحھ ، والجذور المتآكلة بسبب الخراج ، أو لأغراض تقویم الأسنان أو لأسباب أخرى. قد توضع الخیوط الجراحیة والإسفنج الطبي للمساعدة في التئام منطقة القلع بسرعة"),
          InputWidget.ParagraphWidget("المخاطر والمضاعفات والمضایقاتأ"),
          InputWidget.ParagraphWidget("أدرك أن ھناك مخاطر ومضاعفات مرتبطة بإعطاء الأدویة ، بما في ذلك التخدیر وأداء العلاج الموصى بھ. تشمل ھذه المخاطر والمضاعفات المحتملة ، على سبیل المثال لا الحصر"),
          InputWidget.ParagraphWidget("التفاعلات الدوائیة والآثار الجانبیة."),
          InputWidget.ParagraphWidget("الحاجة لإزالة أو فقدان العظم أثناء قلع الأسنان."),
          InputWidget.ParagraphWidget("تلف أو كسر في الأسنان المجاورة أو حشوات/تركیبات الأسنان"),
          InputWidget.ParagraphWidget("قد تنكسر أطراف الجذور أثناء عملیة القلع. قد تتطلب أطراف الجذر ھذه تدخلا جراحًیا متق ًدما أو قد ُترك في العظام لتجنب المزید من العملیات الجراحیة."),
          InputWidget.ParagraphWidget("احتمال إصابة الجیوب الأنفیة أثناء إزالة الأسنان الخلفیة العلویة ، الأمر الذي قد یتطلب علا ًجا إضافًیا أو إصلا ًحا جراحًیا في وقت لاحق"),
          InputWidget.ParagraphWidget("ضعف في الفك نتیجة خلع ضرس العقل. قد ینكسر الفك أثناء العملیة أو أثناء فترة الشفاء."),
          InputWidget.ParagraphWidget("نزیف ما بعد الجراحة ، ألم ، تورم و / أو آلام عظمیة (مضاعفات ناتجة عن تأخر التئام الجروح)."),
          InputWidget.ParagraphWidget("العدوى التي قد تستمر أو قد تحدث وتنتشر."),
          InputWidget.ParagraphWidget("كدمات و / أو تورم أو صعوبة في فتح الفم لعدة أیام أو أسابیع."),
          InputWidget.ParagraphWidget("فقدان الإحساس بالأسنان والشفتین واللسان والأنسجة المحیطة بسبب إصابة الأعصاب والتي قد تستمر لفترة غیر محددة من الزمن."),
          InputWidget.ParagraphWidget("یزید تناول بعض الأدویة المرتبطة بالعظام (مثل البایفوسفونیت) أو العلاج الإشعاعي لمنطقة الرأس / الرقبة للأورام / السرطان من خطر التئام العظام الضعیف أو تنخر العظام (موت العظام) الذي قد لا یتم حلھ تم ًاما.نتیجة للحقن أو استخدام التخدیر ، قد یكون ھناك تورم أو ألم في عضلات الفك أو حتى تنمیل ناتج عن ذلك في اللسان والشفتین والأسنان والفكین و / أو أنسجة الوجھ ، وھو عادة ما یكون مؤقت، ولكن في حالات نادرة ، قد یكون دائم."),
          InputWidget.ParagraphWidget("التغییرات في خطة العلاج"),
          InputWidget.ParagraphWidget("خلال مسار العلاج ، قد یلزم إضافة الإجراءات أو توسیعھا أو تغییرھا إذا وجد طبیب الأسنان ظروفلم یتم تحدیدھا أثناء الفحص وتمت ملاحظتھا لأول مرة أثناء العلاج. ُیمنح الإذن بموجب ھذا لأداء أي خدمات أسنان إضافیة أو موسعة یقرر طبیب الأسنان أنھا ضروریة. علاوة على ذلك ، ووفق لتقدیر طبیب الأسنان ، قد یتم إحالتي إلى أخصائي لمزید من العلاج ، وقد تكون التكلفة مسؤولیتي."),
          InputWidget.ParagraphWidget("بدائل للإجراء أو العلاج الطبي"),
          InputWidget.ParagraphWidget("أفھم أن العلاج البدیل متاح ویشمل ، على سبیل المثال لا الحصر ، عدم المتابعة ببدأ العلاج أو بعلاج مؤقت. بعلاجمؤقت أو بدون علاج ، أتوقع أن تسوء حالتي."),
          InputWidget.ParagraphWidget("الحق في رفض العلاج"),
          InputWidget.ParagraphWidget("أفھم أن لدي الحق في رفض كل أو جزء من الإجراءات المقترحة أو خطة العلاج التي أوصى بھا طبیب الأسنان بعد إطلاعي على خیارات العلاج البدیلة والعواقب المحتملة لرفض العلاج."),
          InputWidget.ParagraphWidget("طریقة الدفع و المسؤولیة المالیة"),
          InputWidget.ParagraphWidget("تم شرح رسوم ھذا العلاج/ الإجراء لي وھي ُمرضیة. أنا على درایة بجمیع الإجراءات / العلاجات المقدمة التي لا یغطیھا التأمینأو التي قد تتطلب الدفع الكامل أو الدفع المشترك."),
          InputWidget.ParagraphWidget("سریة و حفظ المعلومات"),
          InputWidget.ParagraphWidget("أفھم أن جمیع المعلومات الشخصیة والطبیة التي تمت مشاركتھا مع الفریق الطبي ستبقى سریة ولن ُستخدم إلاللأغراض التي تم تقدیمھا من أجلھا. أوافق على استخدام المعلومات في شكل صور إشاعیة أو صور أو مقاطع فیدیو لأغراض أخرى ، مثل منصات التواصل الاجتماعي ، على أساس أنھ لا یمكن التعرف ّ علي من المعلومات الصادرة."),
          InputWidget.ParagraphWidget("أقر بأنني قد قرأت محتویات ھذه الستمارة. أشھد أنني شاركت بصدق وبشكل كامل جمیع العلومات الشخصیة والطبیة الطلوبة معالفریق الطبي. أفھم الخاطر والضاعفات والثار الجانبیة الحتملة لي علج أو إجراء للسنان و أوافق على ھذا العلج ، وأتحمل.مسؤولیتي في اتباع أي تعلیمات بعد الجراء العلجي تُعطى لي وأقبل جمیع النفقات اللزمة في العلج أعلھ"),
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
