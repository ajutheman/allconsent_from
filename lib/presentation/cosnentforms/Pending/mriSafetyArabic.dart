import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;
import 'package:medicoplusconsent/application/bloc/cosent/consent_bloc.dart';
import 'package:medicoplusconsent/domain/api/mriRepo.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/domain/model/mriConsentResponse.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedButtonStyles.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';


// ignore: camel_case_types
class mriSaftyConsentArabic extends StatefulWidget {
  final ConsentRequestModel request;
  // ignore: use_key_in_widget_constructors
  const mriSaftyConsentArabic({required this.request});
  @override
  // ignore: library_private_types_in_public_api
  _mriSaftyConsentArabicState createState() =>
      // ignore: no_logic_in_create_state
      _mriSaftyConsentArabicState(consentRequest: request);
}

// ignore: camel_case_types
class _mriSaftyConsentArabicState extends State<mriSaftyConsentArabic> {
  final ConsentRequestModel consentRequest;
  _mriSaftyConsentArabicState({required this.consentRequest});
  String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  SignatureController _RelativeSignature = SignatureController();
  SignatureController _PatientSignature = SignatureController();
  TextEditingController _PatientName = TextEditingController();
  TextEditingController _Date = TextEditingController();
  TextEditingController _Age = TextEditingController();
  SignatureController patientSignController = SignatureController();
  SignatureController relativeSignController = SignatureController();
  mriSafetyTab _mriSafty=mriSafetyTab();
  @override
  Widget build(BuildContext context) {    

    return Directionality(
      textDirection:  ui.TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: MedControls.extraLargelabel("موافقة التصوير بالرنين المغناطيسي واستبيان السلامة")),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(         
            children: [
                Row(
                children: [
                  InputWidget.QuestionText("اسم المريض:"),
                  InputWidget.QuestionText(consentRequest.patientName),
                ]
              ),
    
              const SizedBox(height: 16.0),
              Row(
                children: [
                  InputWidget.QuestionText("العمر :"),
                  InputWidget.QuestionText(currentDate),
                ],
              ),
    
              askNumber(labelText: "الوزن بالكيلو جرام :", onChanged:(value){
                setState(() {
                  _mriSafty.weight = double.parse(value.toString()) ;
                });
              }),
              InputWidget.ParagraphWidget("الرجاء الاجابة علي الأسئلة الأتيه; هذه المعلومات ضرورية لأنها تساعدنا علي المحافظة على سلامتكم أثناء تصوير الرنين المغناطيسي و من المحتمل أن يحقن المريض بأدوية أو مادة دوائيه تساعد علي اظهار الأجزاء الداخلية للجسم بشكل واضح ومن المهم اعلامنا فى حالة وجود أي جسم معدني داخل جسدك مهما كان صغيرا أو بسيطا"),
              askQuestion(isYes: _mriSafty.hasPacemaker,
              isArabic: true, 
              question: "هل سبق أن تم زرع لك جهاز منظم لضربات القلب ؟", 
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasPacemaker = value ?? false;
                      });
              }),
    
            
               askQuestion(isYes: _mriSafty.hasStimulator,  isArabic: true, 
              question: "هل سبق أن تم زرع لك جهاز منبه للنخاع الشوكى أو للدماغ أو للأعصاب ؟", 
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasStimulator = value ?? false;
                      });
              }),
    
             
              const SizedBox(height: 16.0),            
              askQuestion(isYes: _mriSafty.hasHeadSurgery,  isArabic: true, 
              question: "هل أجريت لك سابقا عملية جراحية داخل الرأس وتم وضع أو استخدام ملاقط معدنية أو تحويلة سوائل أو زرع  أي جهاز أو جسم معدني بداخل الرأس ؟'", 
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasHeadSurgery = value ?? false;
                      });
              }),
    
              const SizedBox(height: 16.0),            
              askQuestion(isYes: _mriSafty.hasMetallicEarImplant,  isArabic: true, 
              question: "هل تستعمل جهاز سمعي مزروع داخل الأذن ( جهاز سمعي قوقعي ) ؟", 
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasMetallicEarImplant = value ?? false;
                      });
              }),
    
              const SizedBox(height: 16.0),            
              askQuestion(isYes: _mriSafty.hasHearingAid,  isArabic: true, 
              question: "هل تستخدم أي أجهزة سمعية  مساعدة حاليا ؟ ", 
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasHearingAid = value ?? false;
                      });
              }),
    
              const SizedBox(height: 16.0),            
              askQuestion(isYes: _mriSafty.hasMetallicFragments, isArabic: true,  
              question: "هل يوجد حاليا داخل عينك أو جسدك أي جسم معدني  كمثال ( شظايا - رصاصة – قطع معدنية أصبت بها خلال العمل أو في أي  حادث )؟", 
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasMetallicFragments = value ?? false;
                      });
              }),
    
              const SizedBox(height: 16.0),            
              askQuestion(isYes: _mriSafty.hasMetallicOrMagneticImplants,  isArabic: true, 
              question: "هل يوجد حاليا  داخل جسدك أي جهاز طبي  سواء معدني أو مغناطيسي ؟", 
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasMetallicOrMagneticImplants = value ?? false;
                      });
              }),
              const SizedBox(height: 16.0),            
              askQuestionWithDetails(isYes: _mriSafty.hasSurgery,    isArabic: true,           
              question: "هل أجريت لك أي عمليه جراحية  من قبل؟'", 
              onTextChanged: (value)
              {
                setState(() {
                  _mriSafty.surgeryDetails=value;
                });
              },
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasSurgery = value??false;
                      });
              }),
    
              const SizedBox(height: 16.0),            
              askQuestionWithDetails(isYes: _mriSafty.hasAllergy,     isArabic: true,          
              question: "هل تعان من أي نوع من أنواع الحساسية كمثال ( أدوية – غبار – مواد غذائية,....)؟'", 
              onTextChanged: (value)
              {
                setState(() {
                  _mriSafty.allergryDetails=value;
                });
              },
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasAllergy = value??false;
                      });
              }),
    
             
    
              InputWidget.FormLabel("للنساء اللواتي فى سن الانجاب  :"),
    
    
              const SizedBox(height: 16.0),            
              askQuestion(isYes: _mriSafty.hasPregnancy,  isArabic: true, 
              question: "هل أنت حامل ؟", 
              onChanged: (value) {
                      setState(() {
                        _mriSafty.hasPregnancy = value ?? false;
                      });
              }),
    
              const SizedBox(height: 16.0),            
              askQuestion(isYes: _mriSafty.isBreastFeeding,  isArabic: true, 
              question: "هل تمارسين الرضاعة الطبيعية في الفترة الحالية؟ '", 
              onChanged: (value) {
                      setState(() {
                        _mriSafty.isBreastFeeding = value ?? false;
                      });
              }),
              
              InputWidget.SubTitle("- قبل دخولك غرفة تصوير الرنين المغناطيسي الرجاء أن تضع جانبا جميع القطع المعدنية أو الاجهزة المساعدة كمثال"),
    
              InputWidget.ParagraphWidget("( مفاتيح – عملات معدنية – مجوهرات – كارت البنك – مفاتيح ممغنطة  - أقلام – دبابيس – الهاتف المتحرك – الأجهزة السمعية ,..........الخ.)"),
    
              const SizedBox(height: 16.0),
              InputWidget.SubTitle("يرجى اتباع تعليمات فني التصوير ."),
              InputWidget.ParagraphWidget("أفوض بموجب هذا اختصاصيي الرعاية الصحية في مركز الاتحاد التشخيصي لأداء تصوير الرنين المغناطيسي الذى طلبه طبيبي المُعالج ، وقد تم شرح الإجراء بالكامل لي ، وأعطي هذه الموافقة طواعية وبمحض إرادتي "),
               
               Container(
                  height: 200,
                  color: MedColors.containerFillGrandientTopColor,
                  child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,20,0),
                      child: Column(                     
                        children: [
                          Signature(
                            controller: _PatientSignature,
                            width: 200,
                            height: 140,
                            backgroundColor: Colors.white,
                          ),
                         InputWidget.QuestionText("علامة المريض",textcolor: Colors.white)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,20,0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Signature(
                            controller: _RelativeSignature,
                            width: 200,
                            height: 140,
                            backgroundColor: Colors.white,
                          ),
                          InputWidget.QuestionText("علامة النسبية",textcolor: Colors.white)]),
                    )
                     ,
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,20,0,0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 200,
                          child: ElevatedButton(
                            style: MedButtonStyles.submiteStyle2,
                            child: InputWidget.FormLabel('إرسال'),
                            onPressed: () async {
                              late bool errors = false;
                              if (!errors) {
                                try {
                                  var patSign =
                                      await InputWidget.GetSignature(_PatientSignature);
                                  var relativeSign = await InputWidget.GetSignature(
                                      _RelativeSignature);
                                  _mriSafty.patDocNo = consentRequest.patDocNo;
                                  _mriSafty.name = consentRequest.patientName;
                                  _mriSafty.patientSign = patSign;
                                  _mriSafty.radioGrapherSign = relativeSign;
                                  _mriSafty.consentDocNo =
                                      consentRequest.consentDocNo;
                                  var result =
                                      await MriRepsository.submitConsent(_mriSafty);
                                } finally {
                                  // ignore: use_build_context_synchronously
                                  var myBloc = BlocProvider.of<ConsentBloc>(context);
                                  myBloc.add(ConsentInitial());
                                  // ignore: use_build_context_synchronously
                                  Navigator.pop(context);
                                  // ignore: use_build_context_synchronously
                                  Navigator.pushNamed(context, '/');
                                }
                              }
                      
                              // Handle form submission here
                              // You can access the form values using the variables declared above (e.g., name, date, gender, etc.)
                            },
                          ),
                        ),                  
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 70,
                        width: 200,
                        child: ElevatedButton(
                          style: MedButtonStyles.retryButtonStyle,
                          child: InputWidget.FormLabel('واضح'),
                          onPressed: () {
                            _PatientSignature.clear();
                            _RelativeSignature.clear();
                            // Handle form submission here
                            // You can access the form values using the variables declared above (e.g., name, date, gender, etc.)
                          },
                        ),
                      ),
                    ),
                                  ]),
                  )
              ]
            ,
          ),
          )
        ]
        )
      )
      )
    );
    
  }
}
