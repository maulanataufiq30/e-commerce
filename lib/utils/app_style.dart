import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

Text textVersiApp = Text('Ver 1.0', style: greyFontStyle);

// Grey Normal
TextStyle greyFontStyleSuperBig =
    GoogleFonts.poppins().copyWith(color: greyColor, fontSize: 34);
TextStyle greyFontStyleVeryBig =
    GoogleFonts.poppins().copyWith(color: greyColor, fontSize: 20);
TextStyle greyFontStyleBig = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle greyFontStyle =
    GoogleFonts.poppins().copyWith(color: greyColor, fontSize: 14);
TextStyle greyFontStyleSmall =
    GoogleFonts.poppins().copyWith(fontSize: 12, color: greyColor);

// Black Bold
TextStyle blackFontBoldStyle0 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold);
TextStyle blackFontBoldStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold);
TextStyle blackFontBoldStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
TextStyle blackFontBoldStyle3 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontWeight: FontWeight.bold);
TextStyle blackFontBoldStyle4 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14);

// Black Normal
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(color: Colors.black);
TextStyle blackFontStyle4 =
    GoogleFonts.poppins().copyWith(fontSize: 14, color: Colors.black);

// Main Bold
TextStyle mainFontBoldStyle1 = GoogleFonts.poppins()
    .copyWith(color: mainColor, fontSize: 22, fontWeight: FontWeight.bold);
TextStyle mainFontBoldStyle2 = GoogleFonts.poppins()
    .copyWith(color: mainColor, fontSize: 16, fontWeight: FontWeight.bold);
TextStyle mainFontBoldStyle3 = GoogleFonts.poppins()
    .copyWith(color: mainColor, fontWeight: FontWeight.bold);

// Main Normal
TextStyle mainFontStyle1 =
    GoogleFonts.poppins().copyWith(color: mainColor, fontSize: 22);
TextStyle mainFontStyle2 =
    GoogleFonts.poppins().copyWith(color: mainColor, fontSize: 16);
TextStyle mainFontStyle3 = GoogleFonts.poppins().copyWith(color: mainColor);

// White Bold
TextStyle whiteFontBoldStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold);
TextStyle whiteFontBoldStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
TextStyle whiteFontBoldStyle3 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontWeight: FontWeight.bold);

// White
TextStyle whiteFontStyle3 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontWeight: FontWeight.bold);

// Red Color
TextStyle redBoldFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.red, fontSize: 16, fontWeight: FontWeight.w900);
