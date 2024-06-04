import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class InformedConsentForRootCanalTreatmentEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  InformedConsentForRootCanalTreatmentEnglish(
      {super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Informed Consent For Root Canal Treatment')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "Informed Consent For Root Canal Treatment"),
              InputWidget.ParagraphWidget(
                  "The goal of root canal treatment is to save a tooth that might otherwise require extraction. Although root canal treatment has a very high success rate, as with all medical and dental procedures, it is a procedure whose results cannot be guaranteed. Further, root canal treatment is performed to correct an apparent problem and occasionally an unapparent, undiagnosed or hidden problem arises."),
              InputWidget.ParagraphWidget(
                  "This procedure will not prevent future tooth decay, tooth fracture or gum disease, and occasionally a tooth that has had root canal treatment may require re-treatment, endodontic surgery, or tooth extraction."),
              InputWidget.ParagraphWidget("Risks:"),
              InputWidget.ParagraphWidget(
                  "Are unlikely, but may occur. They might include but are not limited to:"),
              InputWidget.ParagraphWidget(
                  "a. Instrument separation in the canal."),
              InputWidget.ParagraphWidget(
                  "b. Perforations (extra openings) of the canal with instruments."),
              InputWidget.ParagraphWidget(
                  "c. Blocked root canals that cannot be ideally completed."),
              InputWidget.ParagraphWidget("d. Incomplete healing."),
              InputWidget.ParagraphWidget(
                  "e. Post-operative infection requiring additional treatment or the use of antibiotics."),
              InputWidget.ParagraphWidget(
                  "f. Tooth and/or root fracture that may require extraction."),
              InputWidget.ParagraphWidget(
                  "g. Fracture, chipping, or loosening of existing tooth or crown."),
              InputWidget.ParagraphWidget("h. Post-treatment discomfort."),
              InputWidget.ParagraphWidget(
                  "i. Temporary or permanent numbness."),
              InputWidget.ParagraphWidget(
                  "j. Change in the bite or jaw joint difficulty (TMJ problems or TMD)."),
              InputWidget.ParagraphWidget(
                  "k. Medical problems may occur if I do not have the root canal completed."),
              InputWidget.ParagraphWidget(
                  "l. Reactions to anesthetics, chemicals or medications."),
              InputWidget.ParagraphWidget("Other Treatment Choices:"),
              InputWidget.ParagraphWidget(
                  "The following other treatment options might be possible:"),
              InputWidget.ParagraphWidget("a. No treatment at all."),
              InputWidget.ParagraphWidget(
                  "b. Waiting for more definitive development of symptoms."),
              InputWidget.ParagraphWidget(
                  "c. Extraction: To be replaced with either nothing, a denture,a bridge or an implant"),
              InputWidget.ParagraphWidget(
                  "After the completion of the root canal procedure, you will be referred back to your restorative dentist for the permanent restoration (filling, crown, cap)."),
              InputWidget.ParagraphWidget(
                  "Failure to have the tooth properly restored in a timely manner (generally within 30 days) significantly increases the possibility of failure of the root canal procedure or tooth fracture."),
              InputWidget.ParagraphWidget(
                  "I have had an opportunity to ask questions of my treating doctor and I am satisfied with the answers that I have received. I certify that I speak, read and write English. All of my questions have been answered before signing this form."),
              InputWidget.ParagraphWidget(""),
            ]),
        bottomNavigationBar: SizedBox(
          height: 245,
          child: Container(
            color: Colors.white,
            child: ListView(children: [
              InputWidget.SubTitle(
                  "Patient Name & Sign :${consentReq.patientName}"),
              InputWidget.SignatureWidget(controller, consentReq, context)
            ]),
          ),
        ));
  }
}
