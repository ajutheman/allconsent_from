// DenturesConsentFormEnglish
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class VeneerjcrownsbridgeConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  VeneerjcrownsbridgeConsentFormEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
                'INFORMED CONSENT FOR VENEER, CROWN, AND BRIDGE PROSTHETICS')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "INFORMED CONSENT FOR VENEER, CROWN, AND BRIDGE PROSTHETICS"),
              InputWidget.ParagraphWidget(
                  "I understand that treatment of dental conditions requiring veneers, crowns and/or fixed bridge works includes certain risks and possible unsuccessful results, with even the possibility of failure."),
              InputWidget.ParagraphWidget(
                  "I agree to assume those risks, possible unsuccessful results and/or failure associate with, but not limited to the following: (even though care and diligence is exercised in the treatment of conditions requiring veneers, crowns and bridgework and fabrication of same, there are no promises or guarantees of anticipated results or the longevity of the treatment)."),
              InputWidget.ParagraphWidget(
                  "1. REDUCTION OF THE TOOTH STRUCTURE: In order to replace decayed or otherwise traumatized teeth, it is necessary to modify the existing tooth or teeth so that veneers, crowns (caps) and/or bridges may be placed upon them. Tooth preparation will be done as conservatively as practical. In preparation of teeth, anesthetics are usually needed. At times there may be swelling, jaw muscle tenderness or even a resultant numbness of the tongue, lips, teeth, jaws and/or facial tissues which is usually temporary, or very rarely, permanent."),
              InputWidget.ParagraphWidget(
                  "2.SENSITIVITY OF TEETH: It may be mild to severe. This sensitivity may last only for a short period of time or may last for much longer periods. If it is persistent, notify us in as much as this sensitivity may be from some other source."),
              InputWidget.ParagraphWidget(
                  "3. CROWNED /BRIDGE ABUTMENT TEETH MAY REQUIRE ROOT CANAL TREATMENT: Teeth, after being crowned, may develop a condition known as pulpitis or pulpal degeneration. The tooth or teeth may have been traumatized from an accident, deep decay, extensive preparation, or other causes. It is often necessary to do root canal treatments in these teeth. If teeth remain too sensitive for long periods of time following crowning, root canal treatment may be necessary. Infrequently, the tooth (teeth) may abscess or otherwise not heal which may require root canal treatment, root surgery, or possibly extraction."),
              InputWidget.ParagraphWidget(
                  "4. BREAKAGE: Many factors could contribute to this situation such as chewing excessively hard materials, changes in biting forces, traumatic blows to the mouth, etc. Unobservable cracks may develop from these causes but sometimes may not actually break until chewing soft foods or possibly for no apparent reason. Breakage or chipping seldom occurs due to defective materials or construction unless it occurs soon after placement."),
              InputWidget.ParagraphWidget(
                  "5. UNCOMFORTABLE OR STRANGE FEELING: This may occur because of the differences between natural teeth and artificial replacements. Most patients usually become accustomed to this feeling  in time. In limited situations, muscle soreness or tenderness of the jaw joints (TMJ) may persist for indeterminate periods of time following placement of the prosthesis."),
              InputWidget.ParagraphWidget(
                  "6. ESTHETICS OR APPEARANCE: Patients will be given the opportunity to observe the appearance of veneer, crowns or bridges in place prior to final cementation."),
              InputWidget.ParagraphWidget(
                  "7. LONGEVITY OF VENNERS, CROWNS & BRIDGES: There are many variables that determine “how long” crowns and bridges can be expected to last. Among these are some of the factors mentioned in preceding paragraphs. Additionally, general health, good oral hygiene, regular dental checkups, diet, etc., can affect longevity. Because of this, no guarantees can be made or assumed to be made."),
              InputWidget.ParagraphWidget(
                  "8. It is a patient’s responsibility to seek attention from the dentist should any undue or unexpected problems occur. The patient must diligently follow any and all instructions,  including the scheduling and attending all appointments. Failure to keep the cementation appointment can result in ultimate failure of the veneer, crown/bridge to fit properly and an additional fee may be assessed."),
              InputWidget.ParagraphWidget(
                  "I hereby permit _____________________________________________ or his/her Associate Attending Physicians of the same service and assistants as may be selected and supervised by him/ her to perform the prosthodontic treatment_________________________________________."),
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
