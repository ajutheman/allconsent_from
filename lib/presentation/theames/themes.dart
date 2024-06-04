import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Itemstyles {
  static InputDecoration Textfielddecoration1 = const InputDecoration(
      filled: true,
      fillColor: Color.fromARGB(217, 217, 217, 217),
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(217, 217, 217, 217), width: 0)),
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(217, 217, 217, 217), width: 0)));
  static ButtonStyle loginbuttonstyle = ElevatedButton.styleFrom(
      fixedSize: const Size(300, 40),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: const Color.fromARGB(217, 167, 127, 227),
      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      textStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      )));
  static ButtonStyle postpaidbuttonstyle = ElevatedButton.styleFrom(
      fixedSize: const Size(255, 314),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.5)),

      // backgroundColor: const Color.fromARGB(255, 180, 133, 253),
      // foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontFamily: 'Poppins'));

  static TextStyle HeaderStyle =
      const TextStyle(color: Colors.black87, fontSize: 14);
  static TextStyle Rememberme = const TextStyle(
      color: Color.fromARGB(255, 80, 80, 80),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins');
/*   static TextStyle forgotpassword = const TextStyle(
      color: Color.fromARGB(255, 28, 108, 227),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins'); */
  static TextStyle loginHeader = const TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 30,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins');
  static TextStyle subpageHeader = const TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins');
  static TextStyle AEDstyle = const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 15,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins');
  static TextStyle datavaliditystyle = const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins');
  static TextStyle viewmorestyle = const TextStyle(
      color: Color.fromARGB(255, 96, 63, 209),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins');
  static TextStyle selectplantabbartext = const TextStyle(
      // color: Color.fromARGB(255, 255, 255, 255),

      color: const Color(0xFFA1A1A1),
      fontSize: 12,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins');
  static TextStyle ConfirmedAED = const TextStyle(
      // color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 36,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins');
  static TextStyle Congrats = const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 12,
      fontWeight: FontWeight.w800,
      fontFamily: 'Poppins');
  static TextStyle notification = const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 10,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins');

  static InputDecoration usernamedecoration = const InputDecoration(
      icon: Icon(Icons.account_circle_outlined),
      hintText: 'Username',
      hintStyle: TextStyle(
          fontSize: 12,
          fontFamily: 'Poppins',
          color: Color.fromARGB(255, 200, 200, 200)));
  static InputDecoration passworddecoration = const InputDecoration(
      icon: Icon(Icons.lock_outline),
      hintText: 'Password',
      hintStyle: TextStyle(
          fontSize: 12,
          fontFamily: 'Poppins',
          color: Color.fromARGB(255, 200, 200, 200)));

  static Color ContainerColor(int index) {
    switch (index % 12) {
      case 0:
        {
          Color c = const Color(0xFFA77FE3);
          return c;
        }
      case 1:
        {
          Color c = const Color(0xff94DDE1);
          return c;
        }
      case 2:
        {
          Color c = const Color(0xfFCA87D5);
          return c;
        }
      case 3:
        {
          Color c = const Color(0xffF2CD41);
          return c;
        }
      case 4:
        {
          Color c = const Color(0xff6AD795);
          return c;
        }
      case 5:
        {
          Color c = const Color(0xff79AFE1);
          return c;
        }
      case 6:
        {
          Color c = const Color(0xFF75CEFF);
          return c;
        }
      case 7:
        {
          Color c = const Color(0xff7C708E);
          return c;
        }
      case 8:
        {
          Color c = const Color(0xfF6ADCCC);
          return c;
        }
      case 9:
        {
          Color c = const Color(0xff7287BC);
          return c;
        }
      case 10:
        {
          Color c = const Color(0xffC7BE6C);
          return c;
        }
      case 11:
        {
          Color c = const Color(0xffF87979);
          return c;
        }

      default:
        {}
        break;
    }
    return Colors.red;
  }

  static Color prepaidbuttoncolors(int index) {
    if (index % 2 == 0) {
      Color c = const Color(0xffB485FD);
      return c;
    } else if (index % 2 == 1) {
      Color c = const Color(0xff65DC9B);
      return c;
    }
    return const Color(0xffB485FD);
  }
}

class Colourthemes {
  static Color background = Color.fromARGB(255, 255, 255, 255);
  static Color fontcolor = Color.fromARGB(217, 0, 0, 0);
  static Color logincontainercolor = Color.fromARGB(255, 255, 255, 255);
  static Color headerbackground = Color.fromARGB(255, 28, 41, 101);
  static Color selectcatogorybackground = Color.fromARGB(255, 246, 246, 246);
  static Color changeplanbuttoncolor = Color.fromARGB(255, 106, 220, 204);
  static Color tabbarcolor = const Color(0xffE6E6E6);
}

class simchangeitemstyles {
  //used
  static ButtonStyle Proceedbuttonstyle = ElevatedButton.styleFrom(
      fixedSize: const Size(90, 40),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Color(0xff00963c),
      foregroundColor: Color(0xffffffff),
      textStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      )));
  //*****used
  static ButtonStyle RetryButtonstyle = ElevatedButton.styleFrom(
      backgroundColor: Color(0xff00963c),
      foregroundColor: Color(0xff00963c),
      disabledBackgroundColor: Colors.yellow,
      textStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      )));
  static TextStyle MobilenumberHeader = const TextStyle(
      color: Color(0xff000000),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins');
  static InputDecoration PhonenumberTextfieldstyle = const InputDecoration(
      hintText: '962359730',
      filled: true,
      fillColor: Color(0xffffffff),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffffffff), width: 0)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffffffff), width: 0)));
}
