// DenturesConsentFormEnglish
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class SEALANTConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  SEALANTConsentFormEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                const Text('INFORMED CONSENT FORM FOR DENTAL SEALANT English')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "INFORMED CONSENT FORM FOR DENTAL SEALANT English"),
              InputWidget.ParagraphWidget(
                  " Treatment of teeth through the use of sealants is a preventive measure intended to facilitate the inhibition of dental caries (tooth decay or cavities) in the pits and fissures of the chewing surfaces of the teeth. Sealants are placed with the intent to prevent or delay conventional restorative measures used in restoring teeth with fillings or crowns after the onset of dental caries. There are minimal risks associated with the placement of sealants. The patient may feel some discomfort during the procedure from holding the mouth open for an extended amount of time but there is no anesthetic needed, as the procedure is virtually painless and noninvasive."),
              InputWidget.TitleWidget("IMPORTANT INFORMATION:"),
              InputWidget.ParagraphWidget(
                  "1.) LOOSENING AND/OR DISLODGING OF THE SEALANT: There is the possibility of the sealant loosening or becoming dislodged over time. The length of time over which this may happen is indeterminable because of the many variables which can impact the life of the sealant including, but not limited to the following: a. The forces of mastication (chewing). These forces differ from patient to patient. The forces may be much greater in one patient than in another. Also, the way teeth occlude (come together in chewing) may have an effect on the life of the sealants. b. The types of food or other substances that are put in the mouth and chewed. Very sticky foods such as of gum, sticky candies (such as caramels, licorice, taffy, etc) and very hard substances (such as ice) may cause loosening or dislodgment of the sealant. c. Inadequate oral hygiene such as infrequent or improper brushing of the teeth also may allow leakage around and under the sealant causing it to loosen and allow decay to develop. "),
              InputWidget.ParagraphWidget(
                  " 2.) DECAY PREVENTION: The entire tooth is not protected with sealants. Sealants are applied primarily to the pits and fissures that are in the chewing surfaces of the teeth. These pits and fissures are extremely susceptible to decay and can be protected through the application of sealants which flow into and seal those areas. However, sealants do not protect the areas between the teeth, so thorough brushing and the use of dental floss in these areas is necessary. Otherwise, decay could develop in those areas uncovered by the sealants."),
              InputWidget.TitleWidget(
                  " I have been given the opportunity to ask questions regarding the nature and purpose of sealants and have received answers to my satisfaction. I voluntarily undergo this treatment in hopes of achieving the desired results from the treatment rendered, though no guarantees have been made regarding the outcome. I understand that it is my responsibility to notify this office should any unexpected problems occur or if any problems relating to the treatment rendered are experienced."),
              InputWidget.ParagraphWidget(" "),
              InputWidget.ParagraphWidget(" "),
              InputWidget.ParagraphWidget(" "),
              InputWidget.ParagraphWidget(" "),
              InputWidget.ParagraphWidget(" "),
              InputWidget.ParagraphWidget(" "),
              InputWidget.ParagraphWidget(" "),
              InputWidget.ParagraphWidget(" "),
              InputWidget.ParagraphWidget(" "),
            ]),
        bottomNavigationBar: SizedBox(
          height: 245,
          child: Container(
            color: Colors.white,
            child: ListView(children: [
              InputWidget.SubTitle("Patient’s Name:"),
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
