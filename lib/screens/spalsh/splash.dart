
import 'package:flutter/material.dart';
import 'package:sarbottam/screens/LogIn/login.dart';

import 'splashcolor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: mq.height * 0.38,
            left: mq.width * 0.3,
            child: Container(
              width: mq.width * 0.4,
              height: mq.height * 0.18,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(90)),
              child: Image.asset(
                'assets/images/logo.png',
                scale: 1.2,
              ),
            ),
          ),
          Positioned(
            top: mq.height * 0.8,
            left: mq.width * 0.35,
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => const LinearGradient(colors: [
                Colors.black,
                Color.fromARGB(255, 181, 175, 175)
              ]).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: const Text('Alleviz', style: TextStyle(fontSize: 40)),
            ),
          ),
        ],
      ),
    );
  }
}
