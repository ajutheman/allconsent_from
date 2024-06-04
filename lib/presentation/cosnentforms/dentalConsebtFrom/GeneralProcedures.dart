// DenturesConsentFormEnglish
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class GENERALDENTALPROCEDURESConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  GENERALDENTALPROCEDURESConsentFormEnglish(
      {super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
                'INFORMED CONSENT FORM FOR GENERAL DENTAL PROCEDURESEnglish')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "INFORMED CONSENT FORM FOR GENERAL DENTAL PROCEDURES English"),
              InputWidget.ParagraphWidget(
                  " You have the right to accept or reject dental treatment recommended by your dentist. This form is intended to provide you with an overview of potential risks and complications. Prior to consenting to treatment, you should carefully consider the anticipated benefits, commonly known risks and complications of the recommended procedure, alternative treatments, or the option of no treatment."),
              InputWidget.ParagraphWidget(
                  "It is important that you provide your dentist with an accurate medical history before, during and after treatment. It is equally important that you follow your dentist’s advice and recommendations regarding medication, pre and post treatment instructions, referrals to other dentists or specialists,  and return for scheduled follow up appointments. If you fail to follow the advice of your dentist, you may increase the chances of a poor outcome. Please read the items below and sign at the bottom of the form. "),
              InputWidget.ParagraphWidget(
                  "ORAL EXAMINATION and X-RAYS: X-Rays may require and recommended but not mandatory to complete your examination, diagnosis, and treatment plan. A periodic examination will be provided by the dentist to evaluate your teeth for decay, gum disease, oral cancer, and overall health. "),
              InputWidget.ParagraphWidget(
                  "ORAL PROPHYLAXIS (CLEANING): A routine dental prophylaxis involves the removal of plaque and calculus is recommended at least every 6 months. Some bleeding and sensitivity of teeth after a cleaning can occur, however,  should it persist and if it is severe in nature the office should be contacted. "),
              InputWidget.ParagraphWidget(
                  "DRUGS, MEDICATION and LOCAL ANESTHESIA: Antibiotic, analgesics, and other medications can cause allergic reactions causing redness, swelling of tissues, pain, itching, vomiting, and/or anaphylactic shock (severe allergic reaction). Failure to take medications prescribed may offer risks of continued or aggravated infection, pain and potential resistance to the effect of treatment. Administration of local anesthesia may cause swelling, jaw muscle tenderness or even resultant numbness of the tongue, lips, teeth, jaws and/or facial tissues, which is typically temporary, but in rare instances, may be permanent. "),
              InputWidget.ParagraphWidget(
                  "TOOTH RESTORATIONS: Restore tooth structure for proper function that in some cases Temporary Filling will be needed. More extensive restoration than originally planned, or possibly root canal therapy, may be required due to additional conditions discovered during tooth preparation. "),
              InputWidget.ParagraphWidget(
                  "ENDODONTIC TREATMENT (ROOT CANAL): Removing infected pulp tissues and replacing them with root canal filling material, which may undergo 3-4 sessions. There is no guarantee that root canal treatment will save the tooth and complications can occur from treatment. However, not performing RCT will may increase the severity of pain, swelling, infection, which lead to extraction and possible hospitalization and rare instances death. "),
              InputWidget.ParagraphWidget(
                  " TOOTH EXTRACTION: There are two main types of dental extractions: Simple extraction is used to remove teeth that can be seen and are easily accessible whereas Surgical extraction typically requires an incision into the connective tissue to gain access to the tooth to be removed"),
              InputWidget.ParagraphWidget(
                  "By signing this document, I acknowledge and accept the possible risks and complications of theprocedure and agree to proceed. I further authorize the doctor, ______________________________to modify the procedure if, in his/her professional judgment, it is in my best interest. "),
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
