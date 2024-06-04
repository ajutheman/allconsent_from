
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';

class UltraSoundArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel request;

  UltraSoundArabic({super.key, required this.request}) { }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:InputWidget.QuestionText('الموافقة و الأذن  على اجراء تصوير (الموجات الصوتية ',textcolor: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(          
          scrollDirection:Axis.vertical,
          shrinkWrap: true, children: [
        InputWidget.TitleWidget("الموافقة و الأذن  على اجراء تصوير (الموجات الصوتية )"),
        InputWidget.SubTitle("تفويض"),
        InputWidget.ParagraphWidget(
            "افوض بموجبه مركز الأتحاد التشخيصي للأشعة لأجراء تصوير الموجات الصوتية المطلوبة من طبيبي المعالج "),
        InputWidget.SubTitle(
            "شرح الأجراءات"),
        InputWidget.ParagraphWidget(
            "لقد تم شرح طبيعة الاجراء و الغرض منه بشكل كامل كما تم اخطاري بالفوائد المتوقعة اعطى هذة الموافقة طواعية و بمحض ارادتي"),
        InputWidget.SubTitle("فهم نموذج الموافقة"),
        InputWidget.ParagraphWidget(
            "اقر انني قد قرأت هذا النموذج .وفهمت محتوياته تماما قبل توقيعي"),        
         
          ]),
      ),
    bottomNavigationBar: SizedBox(
      height: 210,
      child: Container(
        color: MedColors.containerFillGrandientTopColor,
        child: ListView(
          children:[
           InputWidget.QuestionText("اسم المريض & توقيعه:" + request.patientName,textcolor: Colors.white),

           InputWidget.SignatureWidget(controller, request, context,isArabic: true)]    
        ),
      ),
    ));
  }
}
