import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class HijamaConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  HijamaConsentFormArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(title: const Text('موافقة الحجامة.')),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  InputWidget.TitleWidget(" موافقة الحجامة."),
                  InputWidget.ParagraphWidget(
                      "1- أتفهم أن جميع أنواع العلاج في هذا المرفق ذات طبيعة علاجية، وأوافق على إبلاغ المعالج بأي إزعاج جسدي وما يتعلق به خلال الجلسات. "),
                  InputWidget.ParagraphWidget(
                      " 2- تم توفير معلومات لي عن العلاج بالحجامة. إذا اخترت تجربة هذه العلاجات أثناء العلاج، فأنا أفهم الآثار المحتملة وتوصيات ما بعد الرعاية."),
                  InputWidget.ParagraphWidget(
                      "-3- شرح لي أن هناك موانع للحجامة لقد كشفت بشكل كامل عن جميع العوامل الصحية لمعالجتي لتجنب أي مضاعفات. "),
                  InputWidget.ParagraphWidget(
                      "4- لقد أوضح لي أن هناك احتمال حدوث تغيرات في اللون من إطلاق وإزالة الشوارد والسموم الحرة من جسدي. "),
                  InputWidget.ParagraphWidget(
                      "أفهم أيضا أن رد الفعل هذا ليس كدمات، ولكن بسبب الحطام الخلوي والعوامل المسببة للأمراض والسموم التي تسحب إلى السطح للتخلص منها خارج الدورة الدموية. "),
                  InputWidget.ParagraphWidget(
                      "أفهم أيضا أن تغير اللون سيتلاشى من بضع ساعات إلى أسبوعين في بعض الحالات وفيما يتعلق بأنشطة الرعاية اللاحقة. "),
                  InputWidget.ParagraphWidget(
                      " 7- أتفهم أنه في المرة الأولى التي أجرب فيها الحجامة، يمكن لجهاز المناعة في جسدي أن يتفاعل مؤقتًا مع هذا التحرر كما هو الحال مع تأثيرات الإنفلونزا المسببة للإنفلونزا مثل الغثيان والصداع، والتيستهدأ في الوقت المناسب مع الراحة والماء. يساعد الماء على تقليل شدة الإطلاق."),
                  InputWidget.ParagraphWidget(
                      "أفهم أن طرق العلاج بالحجامة لا ينبغي أن تقترن بالتقشير القوي، بعد 4 ساعات من الحلاقة، بعد حروق الشمس أو بعد الوجبة مباشرة. "),
                  InputWidget.ParagraphWidget(
                      "أفهم أنه لا يجب التعرض للطقس البارد والرطب و / أو العاصف، والاستحمام والساونا والتمارين العنيفة لمدة 8 ساعات بعد الحجامة "),
                  InputWidget.ParagraphWidget(
                      " أنا أفهم أن التعرض لمثل هذه الحالات المتطرفة يمكن أن ينتج عنه تأثيرات غير مرغوب فيها ويجب أن أتجنب مثل هذه المواقف)."),
                  InputWidget.ParagraphWidget(
                      "10 أفهم أنه يجب أن أتجنب الكحول والألبان واللحوم المصنعة ويجب أن أتناول الكثير من الماء الصافي والعصائر. "),
                  InputWidget.ParagraphWidget(
                      "أوافق اناعلى السماح للمعالج بالحجامة بالقيام بالحجامة. أوافق أيضا على أنني قد قرأت وفهمت وسأتبع جميع المعلومات الواردة أعلاه ولن أحمل المعالج المسؤولية "),
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
               
              ]),
            ),
          )),
    );
  }
}
