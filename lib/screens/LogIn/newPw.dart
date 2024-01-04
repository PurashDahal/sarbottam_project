import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarbottam/screens/LogIn/Pwchange.dart';
import 'package:sarbottam/screens/LogIn/widgets/logo.dart';
import 'package:sarbottam/screens/LogIn/widgets/ticket.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obsecureText = true;

  void showPassword() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    void passwordChange() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const PasswordChange()));
    }

    ;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: mq.height * 0.01), child: const Logo()),
            SizedBox(
              height: mq.height * 0.05,
            ),
            Text(
              'Choose a new password',
              style: GoogleFonts.getFont('Lato',
                  textStyle:
                      const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Flexible(
              child: Text(
                'Create a new password that is atleast 8 characters long',
                softWrap: true,
                style: GoogleFonts.getFont('Lato',
                    textStyle: const TextStyle(fontSize: 15)),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                obscureText: _obsecureText,
                keyboardType: TextInputType.visiblePassword,
                // obscureText: true,
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    suffixIcon: IconButton(
                      onPressed: showPassword,
                      icon: Icon(
                        _obsecureText ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    hintText: 'New password',
                    hintStyle: GoogleFonts.getFont('Lato'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    hintText: 'Retype new password',
                    hintStyle: GoogleFonts.getFont('Lato'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                TickWidget(),
                Flexible(
                  child: Text(
                    'Required all devices to sign with new password',
                    softWrap: true,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: mq.width * 0.9,
              height: mq.height * 0.06,
              // margin: EdgeInsets.only(bottom: mq.height * 0.02),
              child: SizedBox(
                height: mq.height * 0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[600],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    passwordChange();
                  },
                  child: Text(
                    'RESET PASSWORD ',
                    style: GoogleFonts.getFont('Lato',
                        textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
