import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:medicoplusconsent/application/bloc/cosent/consent_bloc.dart';
import 'package:medicoplusconsent/core/colors/colors.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/CrownLengtheningConsentFormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/CrownLengtheningConsentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/DentalFillingRestorativeTreatmentConsentFormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/DenturesConsentFormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/DenturesConsentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/GeneralDentalTreatmentConsentFormenglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/InformedConsentForImplantSurgeryArbic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/InformedConsentForImplantSurgeryenglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/InformedConsentForRootCanalTreatmentArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/InformedConsentForRootCanalTreatmentEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/TeethWhiteningConsentFormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/TeethWhiteningConsentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/WisdomToothExtractionConsentFormArbic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/FrenchMedical/WisdomToothExtractionConsentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/GeneralConsent/GeneralConsent.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/New/UltraSoundArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/New/esophogram.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/New/ultrasound.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/Pending/mammoQuestionnare.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/Pending/mammoQuestionnareArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/Pending/mriSafetyArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/Pending/mriSaftyConsent.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bariumcosnent/bariumconsent.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bariumcosnent/patientSign.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/BotoxConsentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/BotoxConsentFromArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/ChemicalPeelConsentFormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/ChemicalPeelConsentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/DermapenConsentFormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/DermapenConsentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/HAFillerConsent%20FormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/HAFillerConsent%20FormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/HijamaConsentFormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/HijamaconcentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/HydrafacialConsentFormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/HydrafacialConsentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/LaserHairRemovalConsentArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/LaserHairRemovalConsentEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/TattooRemovalConsentFormArabic.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bonita/TattooRemovalConsentFormEnglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/mricosnents/mriPregnanacy.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/xray/xrayIVP.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/xray/xrayenglish.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/xray/xrayenglisharabic.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';

import '../cosnentforms/FrenchMedical/DentalFillingRestorativeTreatmentConsentFormEnglish.dart';
import '../cosnentforms/dentalConsebtFrom/CLEANING.dart';
import '../cosnentforms/dentalConsebtFrom/Extraction.dart';
import '../cosnentforms/dentalConsebtFrom/GeneralProcedures.dart';
import '../cosnentforms/dentalConsebtFrom/Sealant.dart';
import '../cosnentforms/dentalConsebtFrom/VENEER^J CROWNS ^0 BRIDGE..dart';
import '../cosnentforms/dentalConsebtFrom/denturesenglishconsentfrom.dart';
import '../cosnentforms/dentalConsebtFrom/filling.dart';
import '../cosnentforms/dentalConsebtFrom/rct.dart';

class ScreenMainPage extends StatelessWidget {
  late ConsentBloc _bloc;
  String deviceName = 'deviceName';
  ScreenMainPage({super.key, required this.deviceName});
  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<ConsentBloc>(context);
    return StreamBuilder<ConsentRequestModel>(
        stream: _bloc.message,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            ConsentRequestModel consent = snapshot.data as ConsentRequestModel;

            if (consent.consentDocNo == '201') {
              return CLEANINGConsentFormEnglish(consentRequest: consent);
            }
            if (consent.consentDocNo == '202') {
              return DenturesConsentFormEnglish(consentRequest: consent);
            }
            if (consent.consentDocNo == '203') {
              return EXTRACTIONConsentFormEnglish(consentRequest: consent);
            }
            if (consent.consentDocNo == '204') {
              return FillingConsentFormEnglish(consentRequest: consent);
            }
            if (consent.consentDocNo == '205') {
              return GENERALDENTALPROCEDURESConsentFormEnglish(
                  consentRequest: consent);
            }
            if (consent.consentDocNo == '206') {
              return RCTConsentFormEnglish(consentRequest: consent);
            }
            if (consent.consentDocNo == '207') {
              return SEALANTConsentFormEnglish(consentRequest: consent);
            }
            if (consent.consentDocNo == '208') {
              return VeneerjcrownsbridgeConsentFormEnglish(
                  consentRequest: consent);
            }
            if (consent.consentDocNo == '025') {
              return GeneralConsent(consentRequest: consent);
            } else if (consent.consentDocNo == '026' &&
                consent.language == 'English') {
              return BotoxConsentFormEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '026' &&
                consent.language == 'Arabic') {
              return BotoxConsentFormArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '027' &&
                consent.language == 'English') {
              return DermapenConsentFormEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '027' &&
                consent.language == 'Arabic') {
              return DermapenConsentFormArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '028' &&
                consent.language == 'English') {
              return HAFillerConsentFormEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '028' &&
                consent.language == 'Arabic') {
              return HAFillerConsentFormArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '029' &&
                consent.language == 'English') {
              return HydrafacialConsentFormEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '029' &&
                consent.language == 'Arabic') {
              return HydrafacialConsentFormArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '030' &&
                consent.language == 'English') {
              return TattooRemovalConsentFormEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '030' &&
                consent.language == 'Arabic') {
              return TattooRemovalConsentFormArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '031' &&
                consent.language == 'English') {
              return ChemicalPeelConsentFormEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '031' &&
                consent.language == 'Arabic') {
              return ChemicalPeelConsentFormArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '101' &&
                consent.language == "Arabic") {
              return CrownLengtheningConsentFormArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '101' &&
                consent.language == "English") {
              return CrownLengtheningConsentFormEnglish(
                  consentRequest: consent);
            } else if (consent.consentDocNo == '106' &&
                consent.language == "Arabic") {
              return DentalFillingRestorativeTreatmentConsentFormArabic(
                  consentRequest: consent);
            } else if (consent.consentDocNo == '106' &&
                consent.language == "English") {
              return DentalFillingRestorativeTreatmentConsentFormEnglish(
                  consentRequest: consent);
            } else if (consent.consentDocNo == '102' &&
                consent.language == "Arabic") {
              return DenturesConsentFormArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '102' &&
                consent.language == "English") {
              return DenturesEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '105') {
              return GeneralDentalTreatmentConsentFormenglish(
                  consentRequest: consent);
            } else if (consent.consentDocNo == '100' &&
                consent.language == "Arabic") {
              return InformedConsentForImplantSurgeryArabic(
                  consentRequest: consent);
            } else if (consent.consentDocNo == '100' &&
                consent.language == "English") {
              return InformedConsentForImplantSurgeryEnglish(
                  consentRequest: consent);
            } else if (consent.consentDocNo == '104' &&
                consent.language == "Arabic") {
              return RootCanalConsentArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '104' &&
                consent.language == "English") {
              return InformedConsentForRootCanalTreatmentEnglish(
                  consentRequest: consent);
            } else if (consent.consentDocNo == '103' &&
                consent.language == "Arabic") {
              return TeethWhiteningArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '103' &&
                consent.language == "English") {
              return TeethWhitningEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '107' &&
                consent.language == "Arabic") {
              return WisdomToothExtractionArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '107' &&
                consent.language == "English") {
              return WisdomToothExtractionConsentEnglish(
                  consentRequest: consent);
            } else if (consent.consentDocNo == '108' &&
                consent.language == "Arabic") {
              return LaserHairRemovalConsentArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '108' &&
                consent.language == "English") {
              return LaserHairRemovalConsentEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '109' &&
                consent.language == "Arabic") {
              return HijamaConsentFormArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '109' &&
                consent.language == "English") {
              return HijamaConsentFormEnglish(consentRequest: consent);
            } else if (consent.consentDocNo == '004') {
              return bariumcosent(consentRequest: consent);
            } else if (consent.consentDocNo == '004') {
              return bariumcosent(consentRequest: consent);
            } else if (consent.consentDocNo == '005') {
              return mammoQuestionnare(consentRequest: consent);
            } else if (consent.consentDocNo == '006') {
              return mammoQuestionnareArabic(consentRequest: consent);
            } else if (consent.consentDocNo == '007') {
              return xrayconsentenglish(consentRequest: consent);
            } else if (consent.consentDocNo == '008') {
              return xrayenglisharabic(consentRequest: consent);
            } else if (consent.consentDocNo == '016') {
              return xrayIVP(consentRequest: consent);
            } else if (consent.consentDocNo == '009') {
              return mriSafetyConsent(request: consent);
            } else if (consent.consentDocNo == '010') {
              return mriSaftyConsentArabic(request: consent);
            } else if (consent.consentDocNo == '010') {
              return mriSaftyConsentArabic(request: consent);
            } else if (consent.consentDocNo == '011') {
              return mriPregnanacy(consentRequest: consent);
            } else if (consent.consentDocNo == '012') {
              return mriPregnanacy(consentRequest: consent);
            } else if (consent.consentDocNo == '014') {
              return UltraSoundConsent(request: consent);
            } else if (consent.consentDocNo == '015') {
              return UltraSoundArabic(request: consent);
            } else if (consent.consentDocNo == 'PAT_SIGN') {
              return patientSign(ConsentRequest: consent); //patientSign
            } else if (consent.consentDocNo == '013') {
              return EsophogramConsent(consentRequest: consent);
            } else {
              return patientSign(ConsentRequest: consent); //patientSign
            }

            return Scaffold(
                backgroundColor: backGroundColor,
                body: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: InputWidget.TitleWidget("Cosent Form Sign Pad"),
                ));
          } else {
            return Scaffold(
                backgroundColor: backGroundColor,
                body: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   height: 250,
                      //   width: 500,
                      //   child: Image.asset('assets/bonita.png')),

                      Lottie.asset(
                        'assets/bonita.json',
                        width: 600,
                        height: 500,
                      ),
                      // InputWidget.ParagraphWidget("BONITA CONSENT FORMS"),
                      const SizedBox(height: 10, width: 10),
                      InputWidget.FormLabel(deviceName.toString()),
                      InputWidget.ParagraphWidget("Powered By"),
                      Image.asset(
                        'assets/MedicoPlus.png',
                        height: 100,
                      ),
                    ],
                  ),
                ));
          }
        });
  }
}
