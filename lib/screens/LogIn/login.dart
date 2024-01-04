import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarbottam/screens/LogIn/forgetpw.dart';
import 'package:sarbottam/screens/LogIn/widgets/logo.dart';
import 'package:sarbottam/screens/LogIn/widgets/ticket.dart';
import 'package:sarbottam/screens/homePage/Home1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    void loginScreen() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }

    void forgotPassword() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const ForgotPassword()));
    }

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          margin:
              EdgeInsets.only(bottom: mq.height * 0.01, left: 25, right: 25),
          // margin: EdgeInsets.only(),
          child: SizedBox(
            height: mq.height * 0.06,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[600],
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                loginScreen();
              },
              child: Text(
                'LOGIN',
                style: GoogleFonts.getFont(
                  'Lato',
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
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
                height: 45,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 13),
                      child: Text(
                        'Login ID',
                        style: GoogleFonts.getFont(
                          'Lato',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 13),
                      child: Text(
                        'Password',
                        style: GoogleFonts.getFont(
                          'Lato',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const TickWidget(),
                      Text(
                        'Remember Me',
                        style: GoogleFonts.getFont('Lato'),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      forgotPassword();
                    },
                    child: Text(
                      'Forgot Password',
                      style: GoogleFonts.getFont(
                        'Lato',
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
