// DenturesConsentFormEnglish
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class FillingConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  FillingConsentFormEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: const Text('INFORMED CONSENT FOR TOOTH RESTORATION')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget("INFORMED CONSENT FOR TOOTH RESTORATION"),
              InputWidget.ParagraphWidget(
                  "I understand that the placement of composite resin fillings, which may be more aesthetic  in appearance than some of the conventional materials that have been traditionally used, such as silver amalgam or gold, may entail certain risks. There is the possibility of failure to achieve the desired or expected results. I agree to assume those risks that may occur,  even if care and diligence is exercised by my treating dentist in rendering this treatment. These risks include possible unsuccessful results and/or failure of the filling associated with, but not limited to, the following:"),
              InputWidget.ParagraphWidget(
                  "1. SENSITIVITY OF TEETH: Often after preparation of teeth for the placement of any restoration, the prepared teeth may exhibit sensitivity and it can be mild or severe. This can last only for a short period of time or last for much longer periods of time but if persistent or lasts for an extended period of time, please notify the dentist because this can be a sign of more serious problems."),
              InputWidget.ParagraphWidget(
                  "2.RISK OF FRACTURE: Inherent in the placement or replacement of any restoration, is the possibility of the creation of small fracture lines in the tooth structure. Sometimes these fractures are not apparent at the time of removal of the tooth structure and/or the previous fillings and placement or replacement, but they can appear at a later time."),
              InputWidget.ParagraphWidget(
                  "3. NECESSITY FOR ROOT CANAL THERAPY: When fillings are placed or replaced, the preparation of the teeth often requires the removal of tooth structures adequate to ensure that the diseased or otherwise compromised tooth structure provides sound tooth structure for placement of the restoration. At times, this may lead to exposure or trauma to underlying pulp tissue. Should the pulp not heal, which often is exhibited by extreme sensitivity or possible abscess, root canal treatment or extraction may be required."),
              InputWidget.ParagraphWidget(
                  "4.INJURY TO THE NERVES: There is a possibility of injury to the nerves of the lips, jaws, teeth, tongue or other oral or facial tissues from any dental treatment, particularly those involving the administration of local anesthetics. The resulting numbness that can occur is usually temporary, but in rare instances it could be permanent."),
              InputWidget.ParagraphWidget(
                  "5.AESTHETICS OR APPEARANCE: When a composite filling is placed, effort will be made to closely approximate the appearance of natural tooth color. However, because many factors affect the shades of teeth, it may not be possible to exactly match the tooth coloration. Also, the shade of the composite fillings can change over time because of a variety of factors including mouth fluids, foods, smoking, etc. The dentist has no control over these factors."),
              InputWidget.ParagraphWidget(
                  "6. BREAKAGE, DISLODGEMENT OR BOND FAILURE: Because of extreme masticatory (chewing) pressures or other traumatic forces, it is possible for composite resin fillings or aesthetic restorations bonded with composite resins, to be dislodged or fractured. The resin-enamel bond can fail, resulting in leakage and recurrent decay. The dentist has no control over these factors."),
              InputWidget.ParagraphWidget(
                  "I hereby permit _____________________________________________ or his/her Associate Attending Physicians of the same service and assistants as may be selected and supervised by him/ her to perform the restorative treatment/ filling _________________________________________."),
              InputWidget.ParagraphWidget(
                  "By signing this document, I acknowledge and accept the possible risks and complications of the procedure and agree to proceed. I further authorize the doctor to modify the procedure if, in his/her professional judgment, it is in my best interest."),
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
