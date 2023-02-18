import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xff212B36);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF161C24);
const primary = Color(0xFF008000);
const danger = Colors.deepOrange;

const defaultPadding = 16.0;

const String iconimage = "assets/icons/icon.png";
const String paypalicon = "assets/icons/ic_paypal.png";
const String mastercardicon = "assets/icons/ic_mastercard.png";
const String visaicon = "assets/icons/ic_visa.png";

const white = Color(0xFFE3E3E3);

const appBgColor = Color(0xFFE3E3E3);
const secondary = Color(0xFF19D5F1);
const black = Color(0xFF919191);
const blackThread = Color(0xFFE2E2E2);
const transparentColor = Colors.transparent;

class AppColor {
  static Color primaryWhite = const Color.fromARGB(255, 255, 255, 255);
  static Color? successColor = Colors.green[700];
  //
  static EdgeInsets navPading = const EdgeInsets.fromLTRB(70.0, 10, 70, 10);
  static EdgeInsets addFundPading = const EdgeInsets.fromLTRB(40.0, 10, 70, 0);
  static EdgeInsets addRulePading = const EdgeInsets.fromLTRB(40.0, 20, 280, 10);
  static EdgeInsets navPadingDivider = const EdgeInsets.fromLTRB(70.0, 25, 70, 25);
  static EdgeInsets navThinPadingDivider =
      const EdgeInsets.fromLTRB(70.0, 15, 70, 15);
  static EdgeInsets profilePading = const EdgeInsets.fromLTRB(25.0, 5, 25, 10);
  static EdgeInsets addFundPadingDivider = const EdgeInsets.fromLTRB(40.0, 10, 40, 0);

  static EdgeInsets navPading2 = const EdgeInsets.fromLTRB(10.0, 60, 70, 10);
  static List pieColors = [
    Colors.green[400],
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];

  static TextStyle kFontNavStyle = GoogleFonts.getFont('Roboto Mono',
      color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17);
  static TextStyle kFontStyle = GoogleFonts.getFont('Roboto Mono',
      color: Colors.white, fontWeight: FontWeight.w200, fontSize: 17);
  static TextStyle kAddFundSubFontStyle = GoogleFonts.getFont('Roboto Mono',
      color: Colors.white, fontWeight: FontWeight.w200, fontSize: 12);
  static TextStyle kActivityFontStyle = GoogleFonts.getFont('Roboto Mono',
      color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14);
  static TextStyle kProfileFontStyle = GoogleFonts.getFont('Roboto Mono',
      color: Colors.white, fontWeight: FontWeight.w200, fontSize: 15);
  static TextStyle kAddFundFontStyle = GoogleFonts.getFont('Merriweather',
      color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15);
  static TextStyle kFontDollarStyle = GoogleFonts.getFont('Poppins',
      color: Colors.white, fontWeight: FontWeight.w200, fontSize: 17);
  static TextStyle kFontBalanceStyle = GoogleFonts.getFont('Roboto Mono',
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);
  static TextStyle kFontSeparatortyle = GoogleFonts.getFont('Roboto Mono',
      color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 50);
  static TextStyle kFontBalanceFigStyle = GoogleFonts.getFont('Merriweather',
      color: Colors.white, fontWeight: FontWeight.w100, fontSize: 45);
  static TextStyle kFontAccountFigStyle = GoogleFonts.getFont('Merriweather',
      color: Colors.white, fontWeight: FontWeight.w100, fontSize: 25);
  static TextStyle kEmailProfileFontAccountFigStyle = GoogleFonts.getFont(
      'Merriweather',
      color: Colors.white,
      fontWeight: FontWeight.w100,
      fontSize: 18);

  static List<Color> gradienColors = [
    Colors.green[400]!,
    Colors.green[900]!,
    Colors.green[900]!,
    Colors.green[600]!,
  ];
  static List<Color> gradienTInTabsColors = [
    Colors.green[900]!,
    Colors.green[800]!,
    Colors.green[700]!,
    Colors.green[600]!,
  ];
  static List<Color> gradienAppBarColors = [
    Colors.green[900]!,
    Colors.green[900]!,
  ];

  static List<Color> lightThemecontainerGradienGradientColors = [
    const Color(0xFFE2E2E2),
    const Color(0xFFE2E2E2),
    const Color(0xFFE2E2E2),
  ];
  static List<Color> gradienAccountContainerColors = [
    Colors.green[400]!,
    Colors.green[900]!,
    Colors.green[900]!,
    Colors.green[600]!,
  ];
  static List<Color> gradienBalanceContainerLineGraphColors = [
    Colors.green[400]!,
    Colors.green[900]!,
    Colors.green[900]!,
  ];
  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: const Offset(-5, -5),
        blurRadius: 30),
    BoxShadow(
        color: Colors.green[900]!.withOpacity(.2),
        spreadRadius: 2,
        offset: const Offset(7, 7),
        blurRadius: 20)
  ];

  static List<Color> gradienBalanceContainerColors = [
    const Color(0xFF2A2D3E),
    const Color(0xFF2A2D3E),
    const Color(0xFF2A2D3E),
  ];

  static List<Color> containerGradienGradientColors = [
    Colors.indigo[400]!,
    Colors.indigo[900]!,
    Colors.purple[900]!,
    Colors.purple[600]!,
  ];
  //   static List<Color> containerGradienGradientColors = [
  //   Color(0xFF919191),
  //   Color(0xFFE2E2E2),
  //   Color(0xFF5E5E5E),
  // ];

  static BoxDecoration kBoxDecorations = BoxDecoration(
    boxShadow: AppColor.neumorpShadow,
    gradient: LinearGradient(
      colors: AppColor.gradienBalanceContainerColors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
  );

  static BoxDecoration containerBoxDecorations = BoxDecoration(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
    boxShadow: AppColor.neumorpShadow,
    gradient: LinearGradient(
      colors: AppColor.containerGradienGradientColors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
  static BoxDecoration buttonBoxDecorations = BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    gradient: LinearGradient(
      colors: AppColor.containerGradienGradientColors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
