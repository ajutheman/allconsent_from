import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class LaserHairRemovalConsentEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  LaserHairRemovalConsentEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Laser Hair Removal Consent English Form')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "Laser Hair Removal Consent English Form"),
              InputWidget.ParagraphWidget("File No  :${consentReq.patDocNo},"),
              InputWidget.ParagraphWidget(
                  "I, the undersigned, on behalf of myself/the patient, understand and acknowledge that have been fully informed by the treatingConsultant and the associates in the clinic of all my rights and obligationstowards the clinic, which may be provisional diagnosis with an explanation of expected investigations, procedures and results, suggested treatment plans, Treatment alternatives, possible complications and it is of the opinion that this is the most suitable treatment plan for me / my patient."),
              InputWidget.ParagraphWidget(
                  "Multiple sessions will be needed because of the hair growth cycle"),
              InputWidget.ParagraphWidget(
                  "Occasional touchups after the completion of original course of treatment, For example, sun-exposed areas (such asthe face) need more sessions than nonsun-exposed areas (such as the neck and pendants)."),
              InputWidget.ParagraphWidget(
                  "After a week or 10 days of the session, hair appears in the treated area and is not considered new hair but thesame hair that has been treated and falls after a few days to 3 weeks."),
              InputWidget.ParagraphWidget(
                  "Vellus hair, white and blonde hair will remain as it does not contain pigment(melanin)"),
              InputWidget.ParagraphWidget(
                  "Success of the treatment depends upon treated area, skin colors, hormones so it varies from individual to individualThere is no complete 100% laser hair removal but by regularity with a certain number of sessions we can achieve a70% improvement while following up with one or two sessions each year to maintain the result."),
              InputWidget.ParagraphWidget(
                  "I understand and acknowledge that NO guarantee can be given with respect to the final outcome obtained."),
              InputWidget.ParagraphWidget(
                  "I confirm and acknowledge that I have read and understood the contents of the Consent and giving my approvals tostart the treatment."),
            ]),
        bottomNavigationBar: SizedBox(
          height: 245,
          child: Container(
            color: Colors.white,
            child: ListView(children: [
              InputWidget.SubTitle("Patient Signature"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle("Doctor Signature"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle(
                  "Parent or Guardian (if patient is a minor)"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle("Dated : "),
              InputWidget.SubTitle("Time")
            ]),
          ),
        ));
  }
}
