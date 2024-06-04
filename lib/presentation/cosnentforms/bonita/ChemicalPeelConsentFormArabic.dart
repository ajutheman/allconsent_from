
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class ChemicalPeelConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  ChemicalPeelConsentFormArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:const Text(' استمارة الموافقة علىالتقشیر الكیمیائي')),
        body: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
          InputWidget.TitleWidget("    استمارة الموافقة علىالتقشیر الكیمیائي"),
          InputWidget.ParagraphWidget("أقر أنا ................................................... أنني حصلت على استشارة طبیة وھنا أخول "),
          InputWidget.ParagraphWidget(" الطبیب/المعالج......................................... بأنويجوز له/لھا "),
          InputWidget.ParagraphWidget(".....................التفويض باستخدام تقشیر " ),
          InputWidget.ParagraphWidget("لعلاجي"),
          InputWidget.ParagraphWidget("................. أماكن العلاج"),
          InputWidget.ParagraphWidget(" .................... عدد الجلسات  "),
          InputWidget.ParagraphWidget("أدرك أن التقشیر سیزيل الجزء السطحي من الجلد وأنه يستخدم لتقلیل ظھور التجاعید الدقیقة، وتحسین بنیة البشرة ولونھا، وتقلیل حجم المسامات، وإعطاء مظھر أكثر نعومة وتحسین التصبغات "),
          InputWidget.ParagraphWidget("أتفھم أن ھناك احتمالیة لحدوث تأثیرات قصیرة الأجل مثل انزعاج  خفیف إلى متوسط الشدة، ألم، حكة أو الإحساس بالحرقان، التورم والاحمرار، تقشر الجلد في المنطقة الخاضعة للعلاج تستمر لمدة م 7-2"),
          InputWidget.ParagraphWidget(" أدرك أنه يمكن أن تحدث آثار جانبیة نادرة مثل ظھور الندبات وتغیر لون التصبغات، بالإضافة إلى حساسیة الجلد وحساسیة تجاه ً ما قد تحدث عدوى جرثومیة وردود فعل تحسسیة الشمس، نادرا ً فیما وحب الشباب. كما أنني ناقشت أيةحالةكانت لدي سابقا يتعلق بضعف الالتئام أو ظھور ندبات غیر طبیعیة  "),
          InputWidget.ParagraphWidget("أنا على دراية بأنه إذا كنت معرضاً لبثور الحمى / القروح الباردة (داء المنطقة، فأنا بحاجة إلى إعلام طبيبي حتى يتمكن من إعطائي وصفة طبية وأدوية مضادة للفيروسات لإيقافها"),
          InputWidget.ParagraphWidget("أعرف أنه قد تختلف النتائج السريرية اعتمادًا على عوامل فردية، بما في ذلك التاريخ المرضي ومقدار الضرر الناتج عن ن أشعة الشمس أو المشاكل التركيبية ونوع الجلد وامتثال المريض لتعليمات ما قبل / بعد العلاج والاستجابة الفردية للعلاج. وبالتالي لا توجد ضمانات فيما يتعلق بنتائج العلاج"),
          InputWidget.ParagraphWidget("أتفهم أن العلاج بالتقشير الكيميائي قد ينطوي على سلسلة من الجلسات المنفصلة والتي تتراوح من 2 إلى 6 أسابيع وقد تم شرح هيكل الرسوم لي بالتفصيل"),
          InputWidget.ParagraphWidget("أتفهم أن العلاج بالتقشير الكيميائي قد ينطوي على سلسلة من الجلسات المنفصلة والتي تتراوح من 2 إلى 6 أسابيع وقد تم شرح هيكل الرسوم لي بالتفصيل"),
          InputWidget.ParagraphWidget("أؤكد أنني لست حاملاً أو مرضعة في هذا الوقت وأنني لم أتناول أدوية أيزوتريتينوين مثل رواكيوتان كوراكني، أوراتان ...) خلال الأشهر الثلاثة الماضية"),
          InputWidget.ParagraphWidget("أوافق على أنني سأتجنب التعرض لأشعة الشمس لمدة 3 أيام على الأقل من عملية التقشير أو حسب التعليمات")  ,
          InputWidget.ParagraphWidget("أوافق على التقاط الصور المقارنة النتائج.")     ,
          InputWidget.ParagraphWidget("أسمح بالاستخدام المجهول للصور لأغراض التعليم والترويج والمراجعة الطبية المختصة")     ,
          InputWidget.ParagraphWidget("أقر بأنني على استعداد للامتثال لجميع تعليمات العلاج قبل وبعد العلاج. وقد تم شرح هذا الإجراء لي وتمت الإجابة على جميع أسئلتي")     ,
          InputWidget.ParagraphWidget("أنا أتحمل المسؤولية عن أي مضاعفات قد تحدث نتيجة العلاج")     ,
          InputWidget.ParagraphWidget("أقر بأنني قد قرأت وفهمت تماماً الفقرات المذكورة أعلاه وأنه أتيحت لي فرصة كافية لمناقشة العلاج وللحصول على إجابة عن أي أسئلة متعلقة بالعلاج، وعليه أصرح له / لها بمتابعة الإجراء")  ,
          InputWidget.ParagraphWidget("اسم المريض ")  ,

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
