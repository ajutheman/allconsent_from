
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class CrownLengtheningConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

 CrownLengtheningConsentFormEnglish ({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Crown Lengthening Consent Form English')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
        InputWidget.TitleWidget("Crown Lengthening Consent Form English"),
        InputWidget.ParagraphWidget("1.I authorize Dr.${consentReq.doctorName}, to perform the following recommended dental treatment. "),
        InputWidget.ParagraphWidget("2.I understand that I have been diagnosed with the following problem(s):") ,
        InputWidget.ParagraphWidget("a)   Deep filling or fracture of the tooth # _______________ close to the bone which does not allow for proper restoration or placement of a crown.") ,
        InputWidget.ParagraphWidget("The clinical crown is too short to place an adequate retentive crown.") ,
        InputWidget.ParagraphWidget("3.I understand that the following treatments are recommended:") ,
        InputWidget.ParagraphWidget("a)   Crown lengthening procedure on tooth/teeth_________________________________________________________ that involves reflection of soft tissue flaps for access accompanied by soft and hard tissue (bone) recontouring under local anesthetic") ,
        InputWidget.ParagraphWidget(" This procedure can also be conducted under oral sedation or intravenous conscious sedation.") ,
        InputWidget.ParagraphWidget("c)   This treatment may include the use of local anesthetic, antibiotics, analgesics, sutures (stitches) and a wound dressing if required.") ,
        InputWidget.ParagraphWidget("4. I was also informed of the following alternate treatments:") ,
        InputWidget.ParagraphWidget("a)   No crown lengthening, difficult to do a crown") ,
        InputWidget.ParagraphWidget("b)   No crown lengthening, no crown") ,
        InputWidget.ParagraphWidget("c)   Extraction with bone graft") ,
        InputWidget.ParagraphWidget("5. The anticipated length of treatment, although I realize that it may vary greatly between patients and may be influenced by my own level of cooperation and participation and the availability of clinical appointments, and may be delayed by unforeseeable clinical and technical setbacks, has been explained as follows:") ,
        InputWidget.ParagraphWidget("a)   Surgery time: _________________________") ,
        InputWidget.ParagraphWidget("b)   Post-op: 7, 14, 21 days after surgery 15 min apt") ,
        InputWidget.ParagraphWidget("c)   Final crown: Minimum 6-8 weeks after surgery, 6 months for esthetic area") ,
        InputWidget.ParagraphWidget("6. I understand that risks related to the recommended treatments may include, but are not limited to the following:") ,
        InputWidget.ParagraphWidget("a) Allergic reactions to any dental products, materials and medications") ,
        InputWidget.ParagraphWidget("b)  Bleeding") ,
        InputWidget.ParagraphWidget("c) Swelling, ecchymosis 2") ,
        InputWidget.ParagraphWidget("d) Infection e. Pain") ,
        InputWidget.ParagraphWidget("e) Exposure of the root surface (recession) and/or dentinal hypersensitivity") ,
        InputWidget.ParagraphWidget("f)   Exposure of gaps between the teeth") ,
        InputWidget.ParagraphWidget("g) Exposure of crown and bridge joints") ,
        InputWidget.ParagraphWidget("h)  Temporary restriction of mouth opening") ,
        InputWidget.ParagraphWidget("i)   Increase tooth mobility") ,
              
          InputWidget.ParagraphWidget("j)   Possible paresthesia of dental nerves (teeth, lips, tongue, cheeks, palate…)") ,
          InputWidget.ParagraphWidget("7.   I understand that refusing treatment of my condition may impact on my oral and general health. Consequences may include but are not limited to:") ,
          InputWidget.ParagraphWidget("a)  Impossibility to do the crown") ,
          InputWidget.ParagraphWidget("b)  Progression of loss of bone support around tooth/teeth") ,
          InputWidget.ParagraphWidget("c)  Premature loss of tooth/teeth") ,
          InputWidget.ParagraphWidget("8.   I understand the necessity of maintaining a good oral hygiene for a better healing and the importance postsurgical appointments. I also understand the importance to strictly follow my periodontist’s recommendations. Tobacco and alcohol products may affect healing negatively after periodontal surgeries and may also affect maintenance of surgical results.") ,
          InputWidget.ParagraphWidget("  9.  I understand that I have been given no warranty nor guarantee pertaining to the success of suggested          treatment. In most cases the suggested treatment should reduce causes of my periodontal condition and may permit me to keep my teeth for a longer period of time.Because of variations with patients’ home selforal care and medical health, the periodontist cannot positively predict the success of provided treatments. Even with optimal treatments, there are always risks of failure which may require retreatment. The risks of degeneration of my periodontal condition may be still present and may lead to loss of teeth.") ,
          InputWidget.ParagraphWidget("10. I authorize the use of photography, radiography and/or any other documentation, which pertains to care and treatment that I received, to be used for promoting advancement in dentistry. However, my identity will never be shown or discussed to public without my written consent") ,
          InputWidget.ParagraphWidget("I am a competent consenting adult of at least 18 years of age (or my parent or legal guardian is giving consent on my behalf), and further:") ,
          InputWidget.ParagraphWidget("·  Pre and post treatment instructions have been explained to me") ,
          InputWidget.ParagraphWidget("·  Have had the opportunity to ask questions, and all of my questions have been answered to my satisfaction") ,
          InputWidget.ParagraphWidget("·   Must notify the clinician if my medical history changes prior to subsequent treatments") ,
          InputWidget.ParagraphWidget("·  There are no refunds for services rendered or/and after a year from purchase and not used") ,
          InputWidget.ParagraphWidget("My signature below constitutes my acknowledgment and understanding of all this information") ,
          InputWidget.ParagraphWidget("I hereby authorize and direct doctors, nurses and laser technicians to perform treatment on me.") ,



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

