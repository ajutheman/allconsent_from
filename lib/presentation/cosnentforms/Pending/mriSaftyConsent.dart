import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:medicoplusconsent/application/bloc/cosent/consent_bloc.dart';
import 'package:medicoplusconsent/domain/api/mriRepo.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/domain/model/mriConsentResponse.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:medicoplusconsent/presentation/theames/MedButtonStyles.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:medicoplusconsent/presentation/theames/themes.dart';
import 'package:signature/signature.dart';

class mriSafetyConsent extends StatefulWidget {
  final ConsentRequestModel request;
  mriSafetyConsent({required this.request});
  @override
  _mriSafetyConsentState createState() =>
      _mriSafetyConsentState(consentRequest: request);
}

class _mriSafetyConsentState extends State<mriSafetyConsent> {
  final ConsentRequestModel consentRequest;
  _mriSafetyConsentState({required this.consentRequest});
  String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  SignatureController _RelativeSignature = SignatureController();
  SignatureController _PatientSignature = SignatureController();
  TextEditingController _PatientName = TextEditingController();
  TextEditingController _Date = TextEditingController();
  TextEditingController _Age = TextEditingController();
  SignatureController patientSignController = SignatureController();
  SignatureController relativeSignController = SignatureController();
  mriSafetyTab _mriSafty = mriSafetyTab();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MedControls.extraLargelabel("MRI  Consent & Safty Questionnaire")),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      InputWidget.QuestionText("Patient Name :"),
                      InputWidget.QuestionText(consentRequest.patientName),
                    ]),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        InputWidget.QuestionText("Date :"),
                        InputWidget.QuestionText(currentDate),
                      ],
                    ),
                    askNumber(
                        labelText: "Weight:",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.weight = double.parse(value.toString());
                          });
                        }),
                    InputWidget.ParagraphWidget(
                      "Please answer the following questions; this information is required to help us to perform the MRI scan safely. It may be necessary to give you an injection of MR contrast agent to demonstrate internal structure more clearly",
                    ),
                    askQuestion(
                        isYes: _mriSafty.hasPacemaker,
                        question: "Do you have a cardiac Pacemaker?'",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasPacemaker = value ?? false;
                          });
                        }),
                    askQuestion(
                        isYes: _mriSafty.hasStimulator,
                        question:
                            "Do you have a spinal cord or peripheral nerve stimulator?'",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasStimulator = value ?? false;
                          });
                        }),
                    const SizedBox(height: 16.0),
                    askQuestion(
                        isYes: _mriSafty.hasDeepBrainStimulator,
                        question:
                            "Do you have Deep brain stimulator (Medical Device inside the brain)?'",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasDeepBrainStimulator = value ?? false;
                          });
                        }),
                    const SizedBox(height: 16.0),
                    askQuestion(
                        isYes: _mriSafty.hasHeadSurgery,
                        question:
                            "Have you had surgery to your head involving clips, stents or implants?'",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasHeadSurgery = value ?? false;
                          });
                        }),
                    const SizedBox(height: 16.0),
                    askQuestion(
                        isYes: _mriSafty.hasMetallicEarImplant,
                        question: "Do you have any metallic ear implants?'",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasMetallicEarImplant = value ?? false;
                          });
                        }),
                    const SizedBox(height: 16.0),
                    askQuestion(
                        isYes: _mriSafty.hasHearingAid,
                        question: "Are you wearing hearing aid?'",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasHearingAid = value ?? false;
                          });
                        }),
                    const SizedBox(height: 16.0),
                    askQuestion(
                        isYes: _mriSafty.hasMetallicFragments,
                        question:
                            "Do you have any metallic fragments in your eyes or body? (E.g. from working with metal, welding or shrapnel)'",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasMetallicFragments = value ?? false;
                          });
                        }),
                    const SizedBox(height: 16.0),
                    askQuestion(
                        isYes: _mriSafty.hasMetallicOrMagneticImplants,
                        question:
                            "Do you have any metallic or magnetic implants in your body?'",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasMetallicOrMagneticImplants =
                                value ?? false;
                          });
                        }),
                    const SizedBox(height: 16.0),
                    askQuestionWithDetails(
                        isYes: _mriSafty.hasSurgery,
                        question:
                            "Have you had any surgery? If yes, please indicate",
                        onTextChanged: (value) {
                          setState(() {
                            _mriSafty.surgeryDetails = value;
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasSurgery = value ?? false;
                          });
                        }),
                    const SizedBox(height: 16.0),
                    askQuestionWithDetails(
                        isYes: _mriSafty.hasAllergy,
                        question:
                            "Have you had any Allergies? If yes, please indicate.",
                        onTextChanged: (value) {
                          setState(() {
                            _mriSafty.allergryDetails = value;
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasAllergy = value ?? false;
                          });
                        }),
                    InputWidget.FormLabel("To be answered by women only : "),
                    const SizedBox(height: 16.0),
                    askQuestion(
                        isYes: _mriSafty.hasPregnancy,
                        question: "Are you pregnant? '",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.hasPregnancy = value ?? false;
                          });
                        }),
                    const SizedBox(height: 16.0),
                    askQuestion(
                        isYes: _mriSafty.isBreastFeeding,
                        question: "Are you breastfeeding?  '",
                        onChanged: (value) {
                          setState(() {
                            _mriSafty.isBreastFeeding = value ?? false;
                          });
                        }),
                    InputWidget.SubTitle(
                        "PLEASE REMOVE ALL LOOSE METAL OBJECTS BEFORE ENTERING THE SCAN ROOM"),
                    InputWidget.ParagraphWidget(
                        "(Including keys, coins, pens, credit cards, magnetic keys, pins, mobile phones, watches & jewelry)"),
                    const SizedBox(height: 16.0),
                    InputWidget.SubTitle(
                        "Please follow the instruction of the radiographer."),
                    InputWidget.ParagraphWidget(
                        "I hereby authorize the healthcare professionals of Etihad dianostic center to perform upon me the MRI which requested by my referring  Doctor, the procedure has been fully explained to me, I give this consent voluntarily and of my own free will"),
                  ]))),
      bottomNavigationBar: Container(
        height: 180,
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
                InputWidget.QuestionText("Patient Sign",
                    textcolor: Colors.white)
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Signature(
                    controller: _RelativeSignature,
                    width: 250,
                    height: 120,
                    backgroundColor: Colors.white,
                  ),
                  InputWidget.QuestionText("Relative Sign",
                      textcolor: Colors.white)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    width: 200,
                    child: ElevatedButton(
                      style: MedButtonStyles.submiteStyle2,    
                      child: InputWidget.ParagraphWidget('Submit'),
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
                            _mriSafty.consentDocNo = consentRequest.consentDocNo;
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
                        child: InputWidget.ParagraphWidget('Clear'),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
