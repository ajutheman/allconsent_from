// CLEANING ConsentFormEnglish
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class CLEANINGConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  CLEANINGConsentFormEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
                'INFORMED CONSENT FOR DENTAL PROPHYLAXIS (CLEANING)')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "INFORMED CONSENT FOR DENTAL PROPHYLAXIS (CLEANING)"),
              InputWidget.ParagraphWidget(
                  "You have the right to accept or reject dental treatment recommended by your dentist. This form is intended to provide you with an overview of potential risks and complications. Prior to consenting to treatment, you should carefully consider the anticipated benefits, commonly known risks and complications of the recommended procedure, alternative treatments, or the option of no treatment."),
              InputWidget.ParagraphWidget(
                  "It is very important that you provide your dentist with an accurate medical history before, during and after treatment. It is equally important that you follow your dentist’s advice and recommendations regarding medication, pre and post treatment instructions, referrals to other dentists or specialists, and return for scheduled follow up appointments. If you fail to follow the advice of your dentist, you may increase the chances of a poor outcome. Please read the items below and sign at the bottom of the form."),
              InputWidget.ParagraphWidget(
                  "EXAMINATION AND DENTAL RADIOGRAPH: X-Rays are recommended but not mandatory to complete your examination, diagnosis, and treatment plan. A periodic examination will be provided by the dentist at all routine cleanings to evaluate your teeth for decay, gum disease, oral cancer, and overall health."),
              InputWidget.ParagraphWidget(
                  "DENTAL PROPHYLAXIS (Cleaning): A routine dental prophylaxis involves the removal of plaque and calculus above the gum line and will not address gum infections below the gum line called periodontal disease. Some bleeding after a cleaning can occur, however, should it persist and if it is severe in nature the office should be contacted."),
              InputWidget.ParagraphWidget(
                  "I understand that because cleanings involve contact with bacteria and infected tissue in my mouth, I may also experience an infection, which would be treated with antibiotics."),
              InputWidget.ParagraphWidget(
                  "I also understand that after the procedure I may experience:"),
              InputWidget.ParagraphWidget(
                  "Post-Operative discomfort and swelling that may persist for several days."),
              InputWidget.ParagraphWidget(
                  " • Stretching of the corners of the mouth with resultant cracking and bruising."),
              InputWidget.ParagraphWidget(
                  "• Injury to the nerve underlying the teeth resulting in numbness or tingling of the lip, chin, gums, cheek, teeth, and/or tongue on the operated side: this may persist for several days, weeks, months, or in some instances, permanently."),
              InputWidget.ParagraphWidget(
                  "    • Swelling, bruising, and bleeding of the gum tissue."),
              InputWidget.ParagraphWidget("  • Shrinkage of gum tissue."),
              InputWidget.ParagraphWidget("  • Sensitivity of the teeth."),
              InputWidget.ParagraphWidget("• Loosening of the teeth."),
              InputWidget.ParagraphWidget(
                  "    • Exposure of margins of previous crowns or caps."),
              InputWidget.ParagraphWidget(
                  "I hereby permit _____________________________________________ or his/her Associate Attending Physicians of the same service and assistants as may be selected and supervised by him/ her toperform the oral prophylaxis / cleaning and we advised to do it at least every 6 months."),
              InputWidget.ParagraphWidget(
                  "By signing this document, I acknowledge and accept the possible risks and complications of the procedure and agree to proceed. I further authorize the doctor to modify the procedure if, in his/her professional judgment, it is in my best interest."),
              InputWidget.ParagraphWidget(""),
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
