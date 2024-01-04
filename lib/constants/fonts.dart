import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sarbottam/constants/colors.dart';

TextStyle t1() {
  return GoogleFonts.lato(textStyle: TextStyle(color: wh));
}

TextStyle t2() {
  return GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black));
}

TextStyle bold() {
  return const TextStyle(fontWeight: FontWeight.bold);
}

TextStyle small() {
  return const TextStyle(fontSize: 12);
}
