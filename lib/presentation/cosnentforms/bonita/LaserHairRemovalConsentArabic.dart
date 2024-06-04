import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class LaserHairRemovalConsentArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  LaserHairRemovalConsentArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar:
              AppBar(title: const Text('  LASER HAIR REMOVAL CONSENT Arabic ')),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  InputWidget.TitleWidget("LASER HAIR REMOVAL CONSENT Arabic "),
                  InputWidget.ParagraphWidget("Name :${consentReq.patientName},"),
                  InputWidget.ParagraphWidget("File No  :${consentReq.patDocNo},"),
                  InputWidget.ParagraphWidget(
                      "إقرار بموافقة إزالة الشعر بالليزر "),
                  InputWidget.ParagraphWidget("أنا الموقع  "),
                  InputWidget.ParagraphWidget("  أدناه"),
                  InputWidget.ParagraphWidget(
                      "نيابة عننفسي / المريض، أفهمو أقر بأنهقدتم إبلاغي بالكاملمنقبل الاستشاريا لمعالجو الأطباء فيا العيادة بجميع حقوقی و التزاماتيتجاها العيادة، وذلكفيما يتعلق بالتشخيص مع شرح | التحاليلو الإجراءات والنتائج المتوقعة وخطط العلاج   "),
                  InputWidget.ParagraphWidget(
                      " المقترحة وبدائلا لعلاج والمضاعفات المحتملة وير بأن هذه هي خطة العلاج الأنسبلي / للمريض الذيانو بعنه. "),
                  InputWidget.ParagraphWidget(
                      " يتوجبإجراء عدة جلساتوذلكبسببدورة نمو الشعر "),
                  InputWidget.ParagraphWidget(
                      " إجراء جلسات الرتوش بعد الانتهاء من جلسات العلاج الأساسية، على "),
                  InputWidget.ParagraphWidget(
                      "السبيلا لمثال ، المناطق المعرضة للشمس ( كالوجه ( تحتاجلجلسات اكثر من المناطقغير المعرضة للشمس كالرقبة والابطين ) .  "),
                  InputWidget.ParagraphWidget(
                      "بعد اسبوعاً و 10 ايا ممنا الجلسة يظهر شعرفاي  "),
                  InputWidget.ParagraphWidget(
                      " المنطقة المعالجة. وهولا يعتبر شعر جديد لكنهنفس الشعر الذيتمعلا جهو يتساقط بعد "),
                  InputWidget.ParagraphWidget(" بضعة أيا مإلى 3 اسابيع. "),
                  InputWidget.ParagraphWidget(
                      " الشعر الاشقر، الابيض والزغابيلايزول بالمعالجة لأنهلا يحويصيغة الميلانين. "),
                  InputWidget.ParagraphWidget(
                      "  نجاح الإجراء يعتمد على المنطقة المعالجة لون البشرة، الهرمونات ، لذا فإنا لنتائجتختلف من شخص لاخر."),
                  InputWidget.ParagraphWidget(
                      " لا يوجد إزالة كاملة بنسبة 100% للشعر بالليزر ولكن منخلا لا لانتظام "),
                  InputWidget.ParagraphWidget(
                      " بعدد معينمنا لجلساتيمكننا الوصو للتحسن بنسبة 70% معالمتابعة "),
                  InputWidget.ParagraphWidget(
                      "بجلسة أوجلستينكلسنة للمحافظة على النتيجة. أفهمو أقر بأنهلا يمكن تقديمضما نفيما يتعلق بالنتيجة النهائية التيسيتم الحصول عليها.  "),
                  InputWidget.ParagraphWidget(
                      "أؤكد واقربانني قد قرأتو فهمتتماما محتوياتإقرار الموافقة وأعطي موافقتيلبدء العلاج.  "),
                  InputWidget.ParagraphWidget(
                      " اسمو توقيعا المريض الهاتف المتحرك التاريخ و الساعة "),
                  InputWidget.ParagraphWidget(
                      " اسموتوقيع الشاهد أو ولي الأمر "),
                  InputWidget.ParagraphWidget(" الهاتف المتحرك "),
                  InputWidget.ParagraphWidget(" التاريخ و الساعة "),
                ]),
          ),
          bottomNavigationBar: SizedBox(
            height: 250,
            child: Container(
              color: Colors.white,
              child: ListView(children: [
                InputWidget.SubTitle(": إسم المريض"),
                InputWidget.SubTitle("${consentReq.patientName},"),
                InputWidget.SubTitle("  توقیع المريض"),
                InputWidget.SignatureWidget(controller, consentReq, context,
                    isArabic: true),
                InputWidget.SubTitle(":إسم الطبیب "),
                InputWidget.SubTitle("${consentReq.doctorName},"),
                InputWidget.SubTitle("  توقیع الطبیب"),
                InputWidget.SignatureWidget(controller, consentReq, context,
                    isArabic: true),
                InputWidget.SubTitle(":إسم الممرضة"),
                InputWidget.SubTitle(": توقیع الممرضة"),
                InputWidget.SignatureWidget(controller, consentReq, context,
                    isArabic: true),
                InputWidget.SubTitle("الوصي"),
                InputWidget.SignatureWidget(controller, consentReq, context,
                    isArabic: true),
              ]),
            ),
          )),
    );
  }
}
