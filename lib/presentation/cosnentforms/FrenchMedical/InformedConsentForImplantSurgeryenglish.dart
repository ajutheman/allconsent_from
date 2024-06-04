// 
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class InformedConsentForImplantSurgeryEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

 InformedConsentForImplantSurgeryEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('INFORMED CONSENT FOR IMPLANT SURGERY')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("INFORMED CONSENT FOR IMPLANT SURGERY"),
      InputWidget.ParagraphWidget("I authorize my doctor to treat me with dental implants and prostheses, according to my dental needs as indicated by the diagnostic studies and/or evaluations already performed."),
      InputWidget.ParagraphWidget("I have discussed with my doctor the risks associated with implant surgery and have consented to the procedure. I understand that during treatment certain situations or conditions may become apparent and warrant modification of the planned treatment. I authorize my doctor to complete the procedure to the best of his/her judgment."),
      InputWidget.ParagraphWidget("Alternatives to implant surgery and the implant prosthesis have been explained to me, including their risks. I have tried or considered these alternate treatment methods, but I desire an implant and an implant prosthesis to help secure or replace my missing teeth."),
      InputWidget.ParagraphWidget("I am aware that the practice of dentistry and dental surgery is not an exact science and I acknowledge that no guarantees have been made to me concerning the success of my implant prosthesis and the associated treatment and procedures. I am aware that the implant surgery and/or prosthesis may fail, which may require further corrective surgery or the removal of the implant with possible corrective surgery associated with the removal. I understand that no refund will be made for failed implants or failed surgery. Should another implant be placed, a separate fee schedule will be discussed"),
      InputWidget.ParagraphWidget(" I have further been informed of the possible risks and complications involved with surgery, drugs, and anesthesia. Such complications include pain, swelling, infection and discoloration. Numbness of the lip, tongue, chin or teeth may occur. The exact duration may not be determinable and may be irreversible. Also, possible are inflammation of a vein, injury to teeth present, bone fractures, sinus perforation penetrates, delayed healing, allergic reactions to drugs or medications used etc."),
      InputWidget.ParagraphWidget("As with any dental prosthesis, there are possible complications associated with dental implants. These include, but are not limited to, the following: risks of improper fitting bridge work; risks of improper occlusion; risks of prosthetic and/or material failure; loss of permanent teeth; loss of prosthesis and/or implant if dental disease develops; wear or breakage of the implant component and/or prosthesis if systemic disease develops; wear or breakage of the implant component or prosthesis. The development of any of these aforementioned risks may result in the need for surgical removal of the implant and the use of alternate forms of treatment"),
      InputWidget.ParagraphWidget("I certify that I have read, have had explained to me, and fully understand the foregoing consent to implanttreatment, as well as the pamphlet entitled “Information about Osseo integrated Dental Implants” and that it is my intentions to have the foregoing carried out as stated. I consent to the procedure knowing its risks and limitations. I will assume the financial responsibilities as outlined in my treatment planning letter. I certify that I speak, read and write English. All of my questions have been answered before signing this form."),

        ]),
    bottomNavigationBar: SizedBox(
      height: 245,
      child: Container(
        color: Colors.white,
        child: ListView(
           children:[
           InputWidget.SubTitle("Patient Name & Sign :${consentReq.patientName}"),           
           InputWidget.SignatureWidget(controller, consentReq, context)
           ]  
        ),
      ),
    ));
  }
}

