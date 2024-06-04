import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';

class xrayenglisharabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  xrayenglisharabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title:InputWidget.QuestionText('الموافقة و الاذن  على اجراء تصوير(General XRAY / Dental scan)',textcolor: Colors.white)),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(          
            scrollDirection:Axis.vertical,
            shrinkWrap: true, children: [
           InputWidget.TitleWidget("الموافقة و الاذن  على اجراء تصوير(General XRAY / Dental scan)"),
          InputWidget.SubTitle("تفويض:"),
          InputWidget.QuestionText(
              "أفوض بموجبه مركزالاتحاد التشخيصي للأشعة لإجراء تصوير الاشعة السينية \ أشعة الاسنان المطلوبة من طبيبي  المعالج  ${consentReq.doctorName.toString()}"),
          InputWidget.SubTitle("شرح الإجراءات "),
          InputWidget.QuestionText(
              "لقد تم شرح طبيعة الإجراء والغرض منه بشكل كامل كما تم إخطاري بالفوائد المتوقعة والمخاطر والمضاعفات والمضايقات المصاحبة والمخاطرالتي قد تحدث لي من قبل طبيبي المعالج. أعطي هذه الموافقة طواعية وبمحض إرادتي وأعفي مركزالاتحاد التشخيصي للأشعة وجميع موظفي مركز الاتحاد التشخيصي للأشعة من المسؤولية عن الأضرارالناتجة عن ذلك."),
          InputWidget.SubTitle("هم نموذج الموافقة"),
          InputWidget.QuestionText(
              "أقر أنني قد قرأت هذا النموذج ، وفهمت محتوياته تمامًا قبل توقيعي"),        
      
               
            ]),
        ),
      bottomNavigationBar: SizedBox(
        height: 250,
        child: Container(
          color:Colors.white,
          child: ListView(
            children:[
             InputWidget.QuestionText("اسم المريض" + consentReq.patientName,textcolor: Colors.black),
             InputWidget.QuestionText(" توقيعه",textcolor: Colors.black),
             InputWidget.SignatureWidget(controller, consentReq, context,isArabic: true)]    
          ),
        ),
      )),
    );
  }
}
