import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sarbottam/screens/LogIn/login.dart';
import 'package:sarbottam/screens/homePage/Home1.dart';


void main() {
  runApp(MaterialApp(
      theme: ThemeData(useMaterial3: true,
      textTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage()));
}
