// DenturesConsentFormEnglish
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class RCTConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  RCTConsentFormEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('INFORMED CONSENT FOR ENDODONTIC/ ROOT CANAL')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "INFORMED CONSENT FOR ENDODONTIC/ ROOT CANAL"),
              InputWidget.ParagraphWidget(
                  "I understand the nature of the problem causing the need for treatment (that the nerve tissue within the tooth is dead or dying and causing acute or potential risk of infection in the bone surrounding the tooth), and I understand the reasons for treatment (removal of the nerve tissue to relieve or prevent infection)."),
              InputWidget.ParagraphWidget(
                  "The alternative treatment will be extraction of the tooth, it has been explained to me as well as the potential consequences if no treatment is performed. I also understand the possible risks of not completing this treatment once it has begun. I understand that during or after endodontic treatment, there is a possibility that the following may occur: pain, swelling, infection, reinfection,  cold sores, canker sores, irritation or injury to the oral tissues, periodontal involvement (bone loss and tooth mobility due to infection), calcified canals preventing complete endodontic therapy,  allergic reactions to dental material or medications, breakage of instruments (such as files) within the root canal or perforation of the crown or root of the tooth (by dental instruments or as a pre existing condition) which may require surgical correction or result in the loss of the tooth. I understand that root canal therapy is not always successful (approximately 90-95% of cases are treated successfully) and that the endodontic procedure may have to be repeated and/or an additional surgical procedure may be required.at additional expense. I understand that then treatment may involve several appointments to complete, and I may lose this despite all efforts to save it."),
              InputWidget.ParagraphWidget(
                  "I understand that after endodontic treatment, the tooth will be more brittle, may discolor (possibly requiring bleaching or veneering), and will require restorative treatment (filling, post, building,  and/or crown), and I have been given and estimate of fees for the completion of this work. Failure to complete this restorative treatment may result in the loss of the tooth due to fracture. I have been given the opportunity to ask questions and have received satisfactory answer. I am aware that the practice of Dentistry and Endodontics is not an exact science, and I acknowledge that no guarantees have been made to me as a result of the procedure authorized above."),
              InputWidget.ParagraphWidget(
                  "I hereby permit _____________________________________________ or his/her Associate Attending Physicians of the same service and assistants as may be selected and supervised by him/ her to perform the endodontic/ root canal treatment_________________________________________."),
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
