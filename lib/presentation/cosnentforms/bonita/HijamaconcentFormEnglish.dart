import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class HijamaConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  HijamaConsentFormEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Hijama Consent Form ENGLISH')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget("Hijama Consent Form ENGLISH"),
              InputWidget.ParagraphWidget(
                  "1- I understand that all treatment of this facility is therapeutic in nature, I agree to communicate to the therapist any physical discomfort and draping issues during the sessions."),
              InputWidget.ParagraphWidget(
                  " 2- Information have been provided to me about cupping therapy. If I choose to experience these therapies during treatments, I understand the potential effects and after care recommendations."),
              InputWidget.ParagraphWidget(
                  "3- It has been explained to me that there are contraindications for cupping therapy. I have fully disclosed all health factors to my therapist to avoid any complication. "),
              InputWidget.ParagraphWidget(
                  "4-It has been explained to me that there is the possibility of discolorations that can occur from the release and clearing of free radicals and toxins from my body. "),
              InputWidget.ParagraphWidget(
                  " 5-I also understand that this reaction is not bruising but due to cellular debris, pathogenic factors and toxins being drowned to surface to be clear away from my circulatory system."),
              InputWidget.ParagraphWidget(
                  " 6-I further understand that the discolorations will fade from a few hours to as long as 2 weeks in some cases and in relation to my aftercare activities."),
              InputWidget.ParagraphWidget(
                  "7-I understand that the first time I experience cupping, my body’s immune system can temporarily react to this release as it might with the flu- producing flu effects like, nausea, headache, that will subside in time with rest and water. Water helps to reduce the intensity of the release. "),
              InputWidget.ParagraphWidget(
                  "8-I understand that cupping therapy modalities should not be combined with aggressive exfoliation, 4 hours after shaving, after sunburn or directly after meal. "),
              InputWidget.ParagraphWidget(
                  " 9-I understand that exposure to cold, wet and/or windy weather hot showers, baths, saunas and aggressive exercise for 4-6 hours."),
              InputWidget.ParagraphWidget(
                  " (I understand that exposure to such extremes can produce undesirable effects and I should avoid such situations)."),
              InputWidget.ParagraphWidget(
                  " 10-I understand that I should avoid alcohol, diary and processed meat and I should consume an abundant of clear water."),
              InputWidget.ParagraphWidget(
                  "I ${consentReq.patientName} agree to allow the cupping therapist to do cupping. I also agree that I have read, understand and will follow all the information above and will not hold the therapist and the center  responsiblility. "),
            ]),
        bottomNavigationBar: SizedBox(
          height: 245,
          child: Container(
            color: Colors.white,
            child: ListView(children: [
              InputWidget.SubTitle("Patient Signature"),
              InputWidget.SignatureWidget(controller, consentReq, context),  

            ]),
          ),
        ));
  }
}
