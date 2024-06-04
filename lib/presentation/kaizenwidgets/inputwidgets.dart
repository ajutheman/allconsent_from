import 'dart:convert';
import 'dart:ui';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicoplusconsent/application/bloc/cosent/consent_bloc.dart';
import 'package:medicoplusconsent/domain/api/signatureRepo.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
import 'package:medicoplusconsent/presentation/theames/MedButtonStyles.dart';
import 'package:medicoplusconsent/presentation/theames/MedColors.dart';
import 'package:medicoplusconsent/theame.dart';
import 'package:signature/signature.dart';


  Widget kaizenRoundedTextbox({required onChanged,required TextInputType textInputType,bool isNumber=true}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,0,0,0),
      child: SizedBox( 
        width:isNumber?70:null,
        height:isNumber?40:null,        
        child: TextField( 
          keyboardType: textInputType,    
          maxLines: null,
          onChanged: onChanged,
          decoration: InputDecoration(  
            contentPadding:const EdgeInsets.fromLTRB(10, 0, 20, 0),            
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),        
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                    color: MedColors.borderGreyColor, width: 2)),
          ),
        ),
      ),
    );
  }



Widget askQuestion({
  required bool isYes,
  required String question,
  required ValueChanged<bool?> onChanged,
  bool isArabic=false
}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
    child: Wrap(
      children: [
        InputWidget.QuestionText(question),
        Row(
          children: [
            Radio<bool>(            
              value: true,
              groupValue: isYes,
              onChanged: onChanged,
            ),
            InputWidget.QuestionText(isArabic?'نعم':'Yes'),
            Radio<bool>(
              value: false,
              groupValue: isYes,
              onChanged: onChanged,
            ),
            InputWidget.QuestionText(isArabic?'لا':'No'),
          ],
        ),
      ],
    ),
  );
}

Widget askQuestionWithDetails(
    {required bool isYes,
    required String question,
    required ValueChanged<bool?> onChanged,
    required onTextChanged,Color textColor=Colors.black,
    bool isArabic=false}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20,0,0,0),
    child: Wrap(
      alignment: WrapAlignment.start,
      children: [
        Row(
          children: [
            InputWidget.QuestionText(question,textcolor:textColor),
        
        Radio<bool>(
          value: true,
          groupValue: isYes,
          onChanged: onChanged,
        ),
       InputWidget.QuestionText(isArabic?'نعم':'Yes'),
        Radio<bool>(
          value: false,
          groupValue: isYes,
          onChanged: onChanged,
        ),
         InputWidget.QuestionText(isArabic?'لا':'No'),
          ],
        ),
      
    Visibility(
      visible: isYes,
      child: kaizenRoundedTextbox(
        onChanged: onTextChanged,
        textInputType: TextInputType.text,
        isNumber: false
      ),
    )
      ]),
  );
}

Widget askNumber({required labelText, required onChanged}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15,10,10,0),
    child: Row(
      children: [
          InputWidget.QuestionText(labelText),
          const SizedBox(width: 20),
          kaizenRoundedTextbox(textInputType: TextInputType.number,onChanged: onChanged),
      ],
    ),
  );
}


Widget askDate({required labelText, required onChanged}) {
  return SizedBox(
         height: 40,
         width: 120,
         
         child: DateTimePicker( 
                  initialValue: '',
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  dateLabelText: labelText,
                  onChanged: onChanged,
                  onSaved: (val) => {},
                  
                  decoration: InputDecoration(  
          contentPadding:const EdgeInsets.fromLTRB(10, 0, 5, 0),            
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),        
          ),
                ),
  ));
      
  
}



Widget askText({required labelText, required onChanged}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15,10,10,0),
        child: InputWidget.QuestionText(labelText),
      ),
      const SizedBox(height: 16.0),
      kaizenRoundedTextbox(textInputType: TextInputType.text,onChanged: onChanged,isNumber: false),
    ],
  );
}

class InputWidget {
  // ignore: non_constant_identifier_names
  static Padding ParagraphWidget(String content) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        content,
        style: GoogleFonts.poppins(fontSize: 20),
        textAlign: TextAlign.start,
      ),
    );
  }


  // ignore: non_constant_identifier_names
  static Text QuestionText(String content,{Color textcolor=Colors.black}) {
    return Text(
           content,
           style: GoogleFonts.poppins(fontSize: 20,color:textcolor),
           textAlign: TextAlign.start);
    
  }
  static Widget YesNoButton(bool groupName, Function setState) {
    return Row(
      children: [
        Radio<bool>(
          value: true,
          groupValue: groupName,
          onChanged: (value) {
            setState(() {
              groupName = value ?? false;
            });
          },
        ),
        QuestionText('Yes'),
        Radio<bool>(
          value: false,
          groupValue: groupName,
          onChanged: (value) {
            setState(() {
              groupName = value ?? false;
            });
          },
        ),
        QuestionText('No'),
      ],
    );
  }
  static Widget questionWidget(
      {required bool isYes,
      required String? question,
      required ValueChanged<bool?> onChanged}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionText(question!),
        Row(
          children: [
            Radio<bool>(
              value: true,
              groupValue: isYes,
              onChanged: onChanged,
            ),
            QuestionText('Yes'),
            Radio<bool>(
              value: false,
              groupValue: isYes,
              onChanged: onChanged,
            ),
            QuestionText('No'),
          ],
        ),
      ],
    );
  }
  Widget kaizenRoundedTextbox({required onChanged}) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 40,
          child: TextFormField(
            onChanged: onChanged,
            textAlignVertical: TextAlignVertical.top, 
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                      color: MedColors.borderGreyColor, width: 2)),
            ),
          ),
        ));
  }

  static Padding SubTitle(String content) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,30,0,10),
      child: Text(
        content,
        style: GoogleFonts.sourceSansPro(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );
  }

  static Padding FormLabel(String content) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        content,
        style: GoogleFonts.sourceSansPro(
            fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );
  }

  static Widget Label(String content, FontWeight fontWeight) {
    if (fontWeight == FontWeight.normal) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          content,
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: fontWeight),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          content,
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: fontWeight),
        ),
      );
    }
  }

  static Padding TitleWidget(String content) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        content,
        style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.normal),
        textAlign: TextAlign.start,
      ),
    );
  }

  static Future<String> GetSignature(SignatureController controller) async {
    if (controller.isNotEmpty) {
      final signatureImage = await controller.toImage();
      final byteData =
          await signatureImage?.toByteData(format: ImageByteFormat.png);
      final pngBytes = byteData?.buffer.asUint8List();

      // Convert the image data to a base64 string
      final base64String = base64Encode(pngBytes!);
      return base64String;
    } else {
      return "noSign";
    }
  }

  static Container SignatureWidget(SignatureController controller,
      ConsentRequestModel request, BuildContext context,{bool isArabic=false}) {
    Future<String> GetSignature() async {
      if (controller.isNotEmpty) {
        final signatureImage = await controller.toImage();
        final byteData =
            await signatureImage?.toByteData(format: ImageByteFormat.png);
        final pngBytes = byteData?.buffer.asUint8List();

        // Convert the image data to a base64 string
        final base64String = base64Encode(pngBytes!);
        return base64String;
      } else {
        return "noSign";
      }
    }

    return Container(      
      color: MedColors.containerFillGrandientTopColor,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Signature(
              controller: controller,
              width: 300,
              height: 140,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        Column(
          children:[ 
            Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
                height:60,
                width: 150,
                child: ElevatedButton(
                    style: MedButtonStyles.retryButtonStyle,
                    onPressed: () => {controller.clear()},
                    child:InputWidget.QuestionText(isArabic?"علامة واضحة":"Clear Sign",textcolor: Colors.white))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,8.0,0.0,0.0),
            child: SizedBox(
              height: 60,
              width: 150,
              child: ElevatedButton(
                style: MedButtonStyles.okButtonStyle,
                onPressed: () async {
                  final sign = await GetSignature();
                  await SignatureRepository.submitConsent(request, sign);
                  var myBloc = BlocProvider.of<ConsentBloc>(context);
                  myBloc.add(ConsentInitial());
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');
                },
                child:InputWidget.QuestionText(isArabic?"إرسال":"Submit",textcolor: Colors.white)
              ),
            ),
          ),
      ])]    
    )
    );
  }

static showCustomToast(BuildContext context, String message) {
  final overlay = Overlay.of(context);
  OverlayEntry overlayEntry;
  overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      bottom: 20.0,
      width: MediaQuery.of(context).size.width,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding:const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(0.0), // Set the radius for square edges
          ),
          child: Text(
            message,
            style:const TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);

  Future.delayed(Duration(seconds: 2), () {
    overlayEntry.remove();
  });
}
 
}
