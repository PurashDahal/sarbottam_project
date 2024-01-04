// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarbottam/screens/LogIn/verification.dart';
import 'package:sarbottam/screens/LogIn/widgets/logo.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    void Verification() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const VerificationScreen()));
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: mq.height * 0.01),
        child: SizedBox(
          height: mq.height * 0.06,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[600],
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              // loginScreen();
              Verification();
            },
            child: Text(
              'RESET PASSWORD',
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: mq.height * 0.01), child: Logo()),
            SizedBox(
              height: mq.height * 0.05,
            ),
            Text(
              'Forgot Password?',
              style: GoogleFonts.getFont('Lato',
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Text(
              'Reset your password using OTP',
              style: GoogleFonts.getFont('Lato',
                  textStyle: const TextStyle(fontSize: 15)),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    hintText: 'Email or Phone',
                    hintStyle: GoogleFonts.getFont('Lato',
                        textStyle: const TextStyle(
                          fontSize: 15,
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
