

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/home');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Funica',style: GoogleFonts.aladin(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,fontWeight: FontWeight.w800,
                    ) ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
