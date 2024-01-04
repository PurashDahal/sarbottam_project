//import 'package:alleviz/screens/spalsh/splashcolor.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/Logo.jpeg',
                scale: 7,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
