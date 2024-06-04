// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
class mammoQuestionnare extends StatefulWidget {
  final ConsentRequestModel consentRequest;
  const mammoQuestionnare({super.key, required this.consentRequest});
  @override
  // ignore: library_private_types_in_public_api
  _mammoQuestionnare createState() =>
      // ignore: no_logic_in_create_state
      _mammoQuestionnare(consentRequest: consentRequest);
}

// ignore: camel_case_types
class _mammoQuestionnare extends State<mammoQuestionnare> {
  final ConsentRequestModel consentRequest;
  _mammoQuestionnare({required this.consentRequest});

  // ignore: non_constant_identifier_names
  final SignatureController _RelativeSignature = SignatureController();
  // ignore: non_constant_identifier_names
  final SignatureController _PatientSignature = SignatureController();

  MamogramConsentModel consentModel = MamogramConsentModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: MedControls.extraLargelabel("Mammogram Consent")),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18,20,0,0),
            child: Row(
              children: [
                InputWidget.QuestionText("Patient Name : "),
                InputWidget.QuestionText(consentRequest.patientName),
              ],
            ),
          ),

          askNumber(
              labelText: 'Age',
              onChanged: (value) {
                setState(() {
                  consentModel.age = int.tryParse(value) ?? 0;
                });
              })
//PERIODS
          ,
          Row(children: [
            askQuestion(
                isYes: consentModel.periodsIsRegular,
                question: 'Periods is regular?',
                onChanged: (value) {
                  setState(() {
                    consentModel.periodsIsRegular = value ?? false;
                  });
                }),
            Visibility(
              visible: !consentModel.periodsIsRegular,
              child: Row(
                children: [
                  InputWidget.QuestionText(", If No Specify Date "),
                  askDate(
                      labelText: 'Date of period',
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
                isYes: consentModel.menopause,
                question: 'Menopause?',
                onChanged: (value) {
                  setState(() {
                    consentModel.menopause = value ?? false;
                  });
                }),
            Visibility(
              visible: consentModel.menopause,
              child: Row(
                children: [
                  InputWidget.QuestionText(", If Yes Specify Date "),
                  askDate(
                      labelText: 'Menopause Date',
                      onChanged: (val) {
                        consentModel.menoPauseDate = val.toString();
                      }),
                ],
              ),
            )
          ]),

          // Horemone Replacement therapy?
          askQuestion(
              isYes: consentModel.hormoneReplacementTherapy,
              question: 'Horemone Replacement therapy?',
              onChanged: (value) {
                setState(() {
                  consentModel.hormoneReplacementTherapy = value ?? false;
                });
              }),

          askNumber(
              labelText: 'Age at first full term pregnancy',
              onChanged: (value) {
                setState(() {
                  consentModel.ageAtFirstPregnancy = int.tryParse(value) ?? 0;
                });
              }),

          //Number of pregnancy's
          Row(
            children: [
              askNumber(
                  labelText: 'Number of pregnancies',
                  onChanged: (value) {
                    setState(() {
                      consentModel.numberOfPregnancies =
                          int.tryParse(value) ?? 0;
                    });
                  }),

              //Number of Birth's
              askNumber(
                  labelText: 'Number of Bith',
                  onChanged: (value) {
                    setState(() {
                      consentModel.numberOfBirths = int.tryParse(value) ?? 0;
                    });
                  }),
            ],
          ),
          //Lactation
          askQuestion(
              isYes: consentModel.lactation,
              question: 'Lactation?',
              onChanged: (value) {
                setState(() {
                  consentModel.lactation = value ?? false;
                });
              }),

          Visibility(
            visible: consentModel.lactation,
            child: askNumber(
              labelText: "No. Of Years",
              onChanged: (value) {
                setState(() {
                  consentModel.lactationYears = int.tryParse(value) ?? 0;
                });
              },
            ),
          ),

          //Lactation
          askQuestion(
              isYes: consentModel.oralContraceptives,
              question: 'Use of oral contraceptives?',
              onChanged: (value) {
                setState(() {
                  consentModel.oralContraceptives = value ?? false;
                });
              }),

          Visibility(
            visible: consentModel.oralContraceptives,
            child: askNumber(
                labelText: 'Number of years',
                onChanged: (value) {
                  setState(() {
                    consentModel.oralContraceptiveYears =
                        int.tryParse(value) ?? 0;
                  });
                }),
          ),

          const SizedBox(height: 16.0),
          askText(
            labelText: 'Aim of the Study: Screening/Follow-up/Others:',
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
                "Personal History of breast diesease",
                "",
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      askQuestionWithDetails(
                          isYes: consentModel.lump,
                          textColor: Colors.white,
                          question: 'Lump',
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
                          isYes: consentModel.pain,
                          textColor: Colors.white,
                          question: 'Pain',
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
                          isYes: consentModel.discharge,
                          textColor: Colors.white,
                          question: 'Discharge',
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
                          isYes: consentModel.nippleCharges,
                          textColor: Colors.white,
                          question: 'Nipple Charges',
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
                          isYes: consentModel.skinChanges,
                          textColor: Colors.white,
                          question: 'Skin Charges',
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
                          isYes: consentModel.axillaryLump,
                          textColor: Colors.white,
                          question: 'Auxillary Lump',
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
                  'Last Mammogram/Sonogram: When it was & when was the last procedure?',
              onChanged: (value) {
                setState(() {
                  consentModel.lastMammogramProcedure = value;
                });
              }),

          askQuestionWithDetails(
              isYes: consentModel.breastSurgery,
              question: 'Personal history of breast surgery or biopsy?',
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
              isYes: consentModel.breastCancer,
              question: 'Family history of breastcancer ?',
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
              isYes: consentModel.familyHistoryCancer,
              question: 'Family History of cancer?',
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
              isYes: consentModel.personalHistoryOther,
              question: 'Personal history of other diseases?',
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
                "I hereby authorize the healthcare professionals of ${consentRequest.clinicName.toUpperCase()}   to perform upon me the MAMMOGRAM / BREAST USG which requested by my referring  Doctor, the procedure has been fully explained to me, I give this consent voluntarily and of my own free will"),
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
                    InputWidget.QuestionText("Patient Sign",textcolor: Colors.white)
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
                      InputWidget.QuestionText("Relative Sign",textcolor: Colors.white)
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
                      child: InputWidget.QuestionText('Submit',textcolor: Colors.white),
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
                      child: InputWidget.QuestionText('Clear',textcolor: Colors.white),
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
         ));
  }
}
