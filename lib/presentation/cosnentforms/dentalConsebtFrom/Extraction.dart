// EXTRACTIONConsentFormEnglish
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class EXTRACTIONConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  EXTRACTIONConsentFormEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
                'INFORMED CONSENT FOR ORAL SURGERY AND DENTAL EXTRACTION')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "INFORMED CONSENT FOR ORAL SURGERY AND DENTAL EXTRACTION"),
              InputWidget.ParagraphWidget(
                  "I understand that oral surgery and/or dental extractions include inherent risks such as, but not limited to the following:"),
              InputWidget.ParagraphWidget(
                  "1.INJURY TO THE NERVES: This would include injuries causing numbness of the lips, the tongue, and any tissues of the mouth and/or cheeks or face. The numbness which could occur may be of a temporary nature, lasting a few days, a few weeks, a few months, or could possibly be permanent,  and could be the result of surgical procedures or anesthetic administration."),
              InputWidget.ParagraphWidget(
                  "2.BLEEDING, SWELLING, & BRUISING: Some moderate bleeding may last several hours. If profuse, you must contact us as soon as possible. Some swelling is normal, but if severe, you should notify us. Bruises may persist for a week or so."),
              InputWidget.ParagraphWidget(
                  "3.DRY SOCKET: This occurs on occasion when teeth are extracted and is a result of a blood clot not forming properly during the healing process. Dry sockets can be extremely painful if not treated. These usually develop 3-4 days after the surgery."),
              InputWidget.ParagraphWidget(
                  "4.SINUS INVOLVEMENT: In some cases, the root tips of upper teeth lie in close proximity to sinuses. Occasionally during extraction or surgical procedures the sinus membrane may be perforated. Should this occur, it may be necessary to have the sinus surgically closed. Root tips may need to be retrieved from the Sinus."),
              InputWidget.ParagraphWidget(
                  "5.INFECTION: No matter how carefully surgical sterility is maintained, it is possible, because of the existing non-sterile oral environment, for infections to occur post-operatively. These may be of a serious nature. Should severe swelling occur, particularly accompanied with fever or malaise, professional attention should be received as soon as possible."),
              InputWidget.ParagraphWidget(
                  "6.FRACTURED JAW, ROOTS, BONE FRAGMENTS, OR INSTRUMENTS: Although extreme care will be used, the jaw, teeth toots, bone spicules, or instruments used in the extraction procedure may fracture or be fractured requiring retrieval and possibly referral to a specialist. A decision may be made to leave a small piece of root, bone fragment, or instrument in the jaw when removal may require additional extensive surgery, which could cause more harm and add to the risk of complications."),
              InputWidget.ParagraphWidget(
                  "7. INJURY TO ADJACENT TEETH OR FILLINGS: This could occur at times no matter how carefullysurgical and/or extraction procedures are performed."),
              InputWidget.ParagraphWidget(
                  "8.BACTERIAL ENDOCARDITIS: Because of normal existence of bacteria in the oral cavity, the tissues of the heart, as a result of reasons known or unknown, may be susceptible to bacterial infection transmitted through blood vessels, and Bacterial Endocarditis (an infection of the heart) could occur. It is my responsibility to inform the dentist of any heart problems known or suspected or of any artificial joints I may have."),
              InputWidget.ParagraphWidget(
                  "9. UNUSUAL REACTIONS TO MEDICATIONS GIVEN OR PRESCRIBED: Reactions, either mild or severe, may possibly occur from anesthetics or other medications administered or prescribed. All prescription drugs must be taken according to instructions. Women using oral contraceptives must be aware that antibiotics can render these contraceptives ineffective. Other methods of contraception must be utilized during the treatment period."),
              InputWidget.ParagraphWidget(
                  "10. It is my responsibility to seek attention should any undue circumstances occur postoperatively, and I shall diligently follow any pre-operative and post-operative instructions given to me."),
              InputWidget.ParagraphWidget(
                  "I hereby permit _____________________________________________ or his/her Associate Attending Physicians of the same service and assistants as may be selected and supervised by him/ her to perform the oral surgery/ dental extraction_________________________________________."),
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
