import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarbottam/screens/LogIn/login.dart';
import 'package:sarbottam/screens/LogIn/widgets/logo.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({super.key});

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: mq.height,
          width: mq.width,
          margin: const EdgeInsets.only(left: 25, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: mq.height * 0.04),
                child: const Logo(),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Congratulations!',
                      style: GoogleFonts.getFont('Lato',
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Text('Your password has been changed',
                        style: GoogleFonts.getFont('Lato',
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
