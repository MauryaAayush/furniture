import 'dart:async';
import 'package:flutter/material.dart';
import 'package:furniture/view/welcomescreen.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });

    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/logo.png'),height: 98),
                  Text('Funica',
                      style: GoogleFonts.aladin(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 43,
                        fontWeight: FontWeight.w800,
                            letterSpacing: 5,
                      )))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
