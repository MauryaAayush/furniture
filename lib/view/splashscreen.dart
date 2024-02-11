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
            padding: EdgeInsets.symmetric(horizontal: 110),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/logo.png')),
                  Text('Funica',
                      style: GoogleFonts.aladin(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
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
