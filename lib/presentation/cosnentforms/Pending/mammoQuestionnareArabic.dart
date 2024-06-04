// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicoplusconsent/application/bloc/cosent/consent_bloc.dart';
import 'package:medicoplusconsent/domain/api/mammoConsent.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/domain/model/MamogramConsentModel.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedButtonStyles.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:signature/signature.dart';
import 'package:date_time_picker/date_time_picker.dart';

// ignore: camel_case_types
class mammoQuestionnareArabic extends StatefulWidget {
  final ConsentRequestModel consentRequest;
  const mammoQuestionnareArabic({super.key, required this.consentRequest});
  @override
  // ignore: library_private_types_in_public_api
  _mammoQuestionnare createState() =>
      // ignore: no_logic_in_create_state
      _mammoQuestionnare(consentRequest: consentRequest);
}

// ignore: camel_case_types
class _mammoQuestionnare extends State<mammoQuestionnareArabic> {
  final ConsentRequestModel consentRequest;
  _mammoQuestionnare({required this.consentRequest});

  // ignore: non_constant_identifier_names
  final SignatureController _RelativeSignature = SignatureController();
  // ignore: non_constant_identifier_names
  final SignatureController _PatientSignature = SignatureController();

  MamogramConsentModel consentModel = MamogramConsentModel();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(        
          appBar: AppBar(title: MedControls.extraLargelabel("الموافقة على التصوير الشعاعي للثدي")),
          body: ListView(
          
            children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18,20,0,0),
              child: Row(
                children: [
                  InputWidget.QuestionText("اسم المريض : "),
                  InputWidget.QuestionText(consentRequest.patientName),
                ],
              ),
            ),
    
            askNumber(
                labelText: 'العمر',
                onChanged: (value) {
                  setState(() {
                    consentModel.age = int.tryParse(value) ?? 0;
                  });
                })
    //PERIODS
            ,
            Row(children: [
              askQuestion(
                  isArabic: true,
                  isYes: consentModel.periodsIsRegular,
                  question: 'هل الدورة الشهرية منتظمة',
                  onChanged: (value) {
                    setState(() {
                      consentModel.periodsIsRegular = value ?? false;
                    });
                  }),
              Visibility(
                visible: !consentModel.periodsIsRegular,
                child: Row(
                  children: [
                    InputWidget.QuestionText("متى كان الموعد الأخير للدورة الشهرية"),
                    askDate(
                        labelText: 'متى كان الموعد الأخير للدورة الشهرية',
                        onChanged: (val) {
                          consentModel.lastDateOfPeriods = val.toString();
                        }),
                  ],
                ),
              )
            ]),
    
    //PERIODS
            Row(children: [
              askQuestion(
                  isArabic: true,
                  isYes: consentModel.menopause,
                  question: 'هل انقطع الطمث؟',
                  onChanged: (value) {
                    setState(() {
                      consentModel.menopause = value ?? false;
                    });
                  }),
              Visibility(
                visible: consentModel.menopause,
                child: Row(
                  children: [
                    InputWidget.QuestionText("لو الاجابة بنعم أذكري متى كان ذلك"),
                    askDate(
                        labelText: 'لو الاجابة بنعم أذكري متى كان ذلك',
                        onChanged: (val) {
                          consentModel.menoPauseDate = val.toString();
                        }),
                  ],
                ),
              )
            ]),
    
            // Horemone Replacement therapy?
            askQuestion(
               isArabic: true,
                isYes: consentModel.hormoneReplacementTherapy,
                question: 'هل تناولت أي من الهرمونات البديلة ؟',
                onChanged: (value) {
                  setState(() {
                    consentModel.hormoneReplacementTherapy = value ?? false;
                  });
                }),
    
            askNumber(
                labelText: 'كان عمرك عند أول حمل ؟',
                onChanged: (value) {
                  setState(() {
                    consentModel.ageAtFirstPregnancy = int.tryParse(value) ?? 0;
                  });
                }),
    
            //Number of pregnancy's
            Row(
              children: [
                askNumber(
                    labelText: 'كم عدد مرات الحمل ؟',
                    onChanged: (value) {
                      setState(() {
                        consentModel.numberOfPregnancies =
                            int.tryParse(value) ?? 0;
                      });
                    }),
    
                //Number of Birth's
                askNumber(
                    labelText: ' كم عدد الولادات',
                    onChanged: (value) {
                      setState(() {
                        consentModel.numberOfBirths = int.tryParse(value) ?? 0;
                      });
                    }),
              ],
            ),
            //Lactation
            askQuestion(
               isArabic: true,
                isYes: consentModel.lactation,
                question: 'هل قمت بارضاع أطفالك:',
                onChanged: (value) {
                  setState(() {
                    consentModel.lactation = value ?? false;
                  });
                }),
    
            Visibility(
              visible: consentModel.lactation,
              child: askNumber(
                labelText: "فى حالة الاجابة بنعم   لمدة كم شهر فى كل مرة ؟",
                onChanged: (value) {
                  setState(() {
                    consentModel.lactationYears = int.tryParse(value) ?? 0;
                  });
                },
              ),
            ),
    
            //Lactation
            askQuestion(
               isArabic: true,
                isYes: consentModel.oralContraceptives,
                question: 'هل استعملت حبوب منع الحمل',
                onChanged: (value) {
                  setState(() {
                    consentModel.oralContraceptives = value ?? false;
                  });
                }),
    
            Visibility(
              visible: consentModel.oralContraceptives,
              child: askNumber(
                  labelText: 'فى حالة الاجابة بنعم  يرجى ذكر المدة',
                  onChanged: (value) {
                    setState(() {
                      consentModel.oralContraceptiveYears =
                          int.tryParse(value) ?? 0;
                    });
                  }),
            ),
    
            const SizedBox(height: 16.0),
            askText(
              labelText: 'الغرض من فحص  الماموغرام : هل تصوير فقط / متابعة / لغرض أخر وما هو',
              onChanged: (value) {
                setState(() {
                  consentModel.aimOfStudy = value;
                });
              },
            ),
    
            const SizedBox(height: 16.0),
    
            Padding(
              padding: const EdgeInsets.all(0),
              child: MedControls.GetCard(
                  context,
                  "هل هناك أي مرض فى الثدي حاليا",
                  "",
                  Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        askQuestionWithDetails(
                           isArabic: true,
                            isYes: consentModel.lump,
                            textColor: Colors.white,
                            question: 'ورم بالثدي',
                            onTextChanged: (value) {
                              setState(() {
                                consentModel.lumpDetails = value!;
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                consentModel.lump = value ?? false;
                              });
                            }),
                        askQuestionWithDetails(
                           isArabic: true,
                            isYes: consentModel.pain,
                            textColor: Colors.white,
                            question: 'ألم بالثدي',
                            onTextChanged: (value) {
                              setState(() {
                                consentModel.painDetails = value!;
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                consentModel.pain = value ?? false;
                              });
                            }),
                        askQuestionWithDetails(
                           isArabic: true,
                            isYes: consentModel.discharge,
                            textColor: Colors.white,
                            question: 'افرازات من الثدي',
                            onTextChanged: (value) {
                              setState(() {
                                consentModel.dischargeDetails = value!;
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                consentModel.discharge = value ?? false;
                              });
                            }),
                        askQuestionWithDetails(
                           isArabic: true,
                            isYes: consentModel.nippleCharges,
                            textColor: Colors.white,
                            question: 'افرازات من حلمة الثدي',
                            onTextChanged: (value) {
                              setState(() {
                                consentModel.nippleChargeDetails = value!;
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                consentModel.nippleCharges = value ?? false;
                              });
                            }),
                        askQuestionWithDetails(
                           isArabic: true,
                            isYes: consentModel.skinChanges,
                            textColor: Colors.white,
                            question: 'تغيير بجلد الثدي',
                            onTextChanged: (value) {
                              setState(() {
                                consentModel.skinChangeDetails = value!;
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                consentModel.skinChanges = value ?? false;
                              });
                            }),
                        askQuestionWithDetails(
                           isArabic: true,
                            isYes: consentModel.axillaryLump,
                            textColor: Colors.white,
                            question: 'ورم تحت الابط',
                            onTextChanged: (value) {
                              setState(() {
                                consentModel.axillaryLumpDetails = value!;
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                
                                consentModel.axillaryLump = value ?? false;
                              });
                            })
                      ]),
                  true),
            ),
    
            askText(
                labelText:
                    'هل قمت بعمل فحص موجات صوتية للثدي أو ماموغرام سابقا ومتى كان ذلك مع ذكر تاريخ أخر فحص ؟',
                onChanged: (value) {
                  setState(() {
                    consentModel.lastMammogramProcedure = value;
                  });
                }),
    
            askQuestionWithDetails(
               isArabic: true,
                isYes: consentModel.breastSurgery,
                question: 'هل هناك أي جراحة سابقة للثدي ؟',
                onTextChanged: (value) {
                  setState(() {
                    consentModel.breastSurgeryDetails = value!;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    consentModel.breastSurgery = value ?? false;
                  });
                }),
    
            askQuestionWithDetails(
               isArabic: true,
                isYes: consentModel.breastCancer,
                question: 'هل أصيب أحد من أفراد العائله بسرطان الثدي   كمثال ',
                onTextChanged: (value) {
                  setState(() {
                    consentModel.breastCancerDetails = value!;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    consentModel.breastCancer = value ?? false;
                  });
                }),
    
            askQuestionWithDetails(
               isArabic: true,
                isYes: consentModel.familyHistoryCancer,
                question: 'هل أصيب احد من  أفراد العائلة بمرض السرطان',
                onTextChanged: (value) {
                  setState(() {
                    consentModel.familyHistoryCancerDetails = value!;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    consentModel.familyHistoryCancer = value ?? false;
                  });
                }),
    
            askQuestionWithDetails(
               isArabic: true,
                isYes: consentModel.personalHistoryOther,
                question: 'هل تعانين من أي مرض',
                onTextChanged: (value) {
                  setState(() {
                    consentModel.personalHistoryOtherDetails = value!;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    consentModel.personalHistoryOther = value ?? false;
                  });
                }),
    
           Padding(
             padding: const EdgeInsets.fromLTRB(20,10,0,10),
             child: InputWidget.QuestionText(
                  "فوض بموجب هذا اختصاصيي الرعاية الصحية ${consentRequest.clinicName.toUpperCase()} لأداء الماموغرام | الموجات الصوتيه للثدي التي طلبها طبيبي المُعالج ، وقد تم شرح الإجراء بالكامل لي ، وأعطي هذه الموافقة طواعية وبمحض إرادتي"),
           )]),
           bottomNavigationBar:Container(
             height: 200,
             color: MedColors.containerFillGrandientTopColor,
             child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Signature(
                          controller: _PatientSignature,
                          width: 250,
                          height: 120,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      InputWidget.QuestionText("توقيع المريض",textcolor: Colors.white)
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0,8,8,8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Signature(
                          controller: _RelativeSignature,
                          width: 250,
                          height: 120,
                          backgroundColor: Colors.white,
                        ),
                        InputWidget.QuestionText("توقيع فني التصوير ",textcolor: Colors.white)
                      ],
                    ),
                  ),
                
                Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 60,
                      width: 200,
                      child: ElevatedButton( 
                        style: MedButtonStyles.submiteStyle2,                     
                        child: InputWidget.QuestionText('إرسال',textcolor: Colors.white),
                        onPressed: () async {
                          late bool errors = false;
                             
                          if (!consentModel.periodsIsRegular) {
                            if (consentModel.lastDateOfPeriods == '') {
                              InputWidget.showCustomToast(context,
                                  "Last date of periods is mandatory when periods are irregular.");
                              errors = true;
                            }
                          }
                             
                          if (consentModel.menopause) {
                            if (consentModel.menoPauseDate == '' && !errors) {
                              InputWidget.showCustomToast(context,
                                  "Last date of periods is required if menopause happend.");
                              errors = true;
                            }
                          }
                             
                          if (consentModel.lump) {
                            if (consentModel.lump == '' && !errors) {
                              InputWidget.showCustomToast(context,
                                  "Lump details is required when lump is yes");
                              errors = true;
                            }
                          }
                             
                          if (consentModel.pain) {
                            if (consentModel.painDetails == '' && !errors) {
                              InputWidget.showCustomToast(context,
                                  "Pain details is required when pain is yes");
                              errors = true;
                            }
                          }
                             
                          if (consentModel.discharge) {
                            if (consentModel.discharge == '' && !errors) {
                              InputWidget.showCustomToast(context,
                                  "Discharge details is required when discharge is yes");
                              errors = true;
                            }
                          }
                             
                          if (!errors) {
                            try {
                              var patSign =
                                  await InputWidget.GetSignature(_PatientSignature);
                              var relativeSign =
                                  await InputWidget.GetSignature(_RelativeSignature);
                              consentModel.patDocNo = consentRequest.patDocNo;
                              consentModel.name = consentRequest.patientName;
                              consentModel.patientSign = patSign;
                              consentModel.radioGrapherSign = relativeSign;
                              consentModel.consentDocNo = consentRequest.consentDocNo;
                              var result =
                                  await MammoConsentAPI.submitConsent(consentModel);
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 60,
                      width: 200,
                      child: ElevatedButton(
                        style: MedButtonStyles.retryButtonStyle,   
                        child: InputWidget.QuestionText('واضح',textcolor: Colors.white),
                        onPressed: () {
                          _PatientSignature.clear();
                          _RelativeSignature.clear();
                          // Handle form submission here
                          // You can access the form values using the variables declared above (e.g., name, date, gender, etc.)
                        },
                      ),
                    ),
                  ),
                ],
              )
                ]
                   ),
           )),
    );
  }
}
