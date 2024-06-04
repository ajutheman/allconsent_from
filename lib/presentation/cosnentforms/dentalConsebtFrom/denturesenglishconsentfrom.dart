// DenturesConsentFormEnglish
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class DenturesConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;
  //202
  DenturesConsentFormEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
                'INFORMED CONSENT FOR FULL DENTURES AND PARTIAL DENTURES English')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "INFORMED CONSENT FOR FULL DENTURES AND PARTIAL DENTURES"),
              InputWidget.ParagraphWidget(
                  "I ${consentReq.patientName},understand that removable prosthetic appliances (Partial and Full Artificial Dentures)include risks and possible failures associated with such dental treatment. I agree to assume those risks and possible failures associated with, but not limited to, the following: (even though the utmost care and diligence is exercised in preparation for, and fabrication of, prosthetic appliances, there is the possibility of failure with patients not adapting to them):  "),
              InputWidget.ParagraphWidget("1.FAILURE OF FULL DENTURES:"),
              InputWidget.ParagraphWidget(
                  "there are many variables which may contribute to this possibility, such as: (1) gum tissues which cannot bear the pressures placed upon them resulting in excessive tenderness and sore spots; (2) jaw ridges which may not provide adequate support and/or retention; (3) musculature in the tongue, floor of the mouth, cheeks, etc., which may not adapt to and be able to accommodate the artificial appliances; (4) excessive gagging reflexes; (5) excessive saliva or excessive dryness of mouth; (6) general psychological and/or physical problems interfering with success."),
              InputWidget.ParagraphWidget("2. FAILURE OF PARTIAL DENTURES:"),
              InputWidget.ParagraphWidget(
                  "Many variables may contribute to unsuccessful utilizing of partial dentures (removable bridges). The variables may include those problems related to failure of full dentures, in addition to: (1) natural teeth to which partial dentures are anchored (called abutment teeth) may become tender, sore, and/or mobile; (2) abutment teeth may decay or erode around the clasps or attachments; (3) tissues supporting the abutment teeth may fail."),
              InputWidget.ParagraphWidget("3.BREAKAGE:"),
              InputWidget.ParagraphWidget(
                  "Due to the types of materials which are necessary in the construction of these appliances, breakage may occur even though the materials used were not defective. Factors which may contribute to breakage are: (1) chewing on foods or objects which are excessively hard; (2) gum tissue shrinkage which causes excessive pressures to be exerted unevenly on the dentures; (3) cracks which may be unnoticeable, and which occurred previously from causes such as those mentioned in (1) and (2); or the dentures having being dropped or damaged previously. The above may also cause extensive denture tooth wear or chipping."),
              InputWidget.ParagraphWidget("4.LOOSE DENTURES:"),
              InputWidget.ParagraphWidget(
                  "Full dentures normally become looser when there are changes in the supporting gum tissues. Dentures themselves do not change unless subjected to extreme heat or dryness. When dentures become “loose”, relining the dentures may be necessary. Normally, it is necessary to charge for relining dentures. Partial dentures become loose for the listed reasons in addition to clasps or other attachments loosening. Sometimes dentures feel loose for other reasons (see paragraph 1)."),
              InputWidget.ParagraphWidget("5.ALLERGIES TO DENTAL MATERIALS: "),
              InputWidget.ParagraphWidget(
                  "Very infrequently, the oral tissues may exhibit allergic symptoms to the materials used in the construction of either partial dentures or full dentures, over which we have no control. 1"),
              InputWidget.ParagraphWidget(
                  "6.FAILURE OF SUPPORTING TEETH AND/OR SOFT TISSUE: "),
              InputWidget.ParagraphWidget(
                  "Natural teeth supporting partials may fail due to decay; excessive trauma; gum tissue or bony tissue problems. This may necessitate extraction. The supporting soft tissues may fail due to many problems including poor dental or general health."),
              InputWidget.ParagraphWidget(
                  "7. It is the patient’s responsibility to seek attention when problems occur and do not lessen in a reasonable amount of time; also, to be examined regularly to evaluate the dentures, condition of the gums, and the patient’s oral health."),
              InputWidget.ParagraphWidget(
                  "By signing this document, I acknowledge and accept the possible risks and complications of the procedure and agree to proceed. I further authorize the doctor, ${consentReq.doctorName}to modify the procedure if, in his/her professional judgment, it is in my best interest."),
              InputWidget.ParagraphWidget(""),
              InputWidget.ParagraphWidget(""),
            ]),
        bottomNavigationBar: SizedBox(
          height: 245,
          child: Container(
            color: Colors.white,
            child: ListView(children: [
              InputWidget.SubTitle(
                  "NAME OVER SIGNATURE OF PATIENT/ PERSON WITH AUTHORITY TO THE CONSENT FOR PATIENT"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle(
                  "I certify that I have explained to the patient and/or the patient’s legal representative the nature, purpose, benefits, known risks, complications and alternatives to the proposed procedure. The patient and/or patient’s legal representative has voiced an understanding of the information given. I have answered all questions to the best of my knowledge, and I believe that the patient and/or legal representative fully understands what I have explained."),
              // InputWidget.SubTitle("NAME OVER SIGNATURE OF PHYSICIAN"),
              // InputWidget.SignatureWidget(controller, consentReq, context),
              // InputWidget.SubTitle(
              //     "I have accurately read or witnessed the accurate explanation of the consent form, and the individual has had the opportunity to ask questions. I confirm that the individual has given consent freely."),
              // InputWidget.SubTitle(
              //     "Parent or Guardian (if patient is a minor)"),
              // InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle("Dated : "),
              InputWidget.SubTitle("Time")
            ]),
          ),
        ));
  }
}
