import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homescreen.dart';

void main() {
  runApp(const WelcomeScreen());
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Set the status bar to be transparent
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
  }

  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF6C6058),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: -50,
            child: Image.asset(
              'assets/images/Page2.png',
              fit: BoxFit.fill,
              width: width * 1.3,
              height: height * 0.9,
            ),
          ),
          Positioned(
            top: height * 0.61,
            left: width * 0.07,
            child: const Text(
              'Welcome to 👋',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
              ),
            ),
          ),
          Positioned(
            top: height * 0.69,
            left: width * 0.08,
            child: Text('Funica',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                  ),
                )),
          ),

          Positioned(
            top: height * 0.84,
            left: width * 0.09,
            child: Text(
                'The best furniture e-commerce app of the \ncentury for your daily needs!',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1),
                )),
          ),
          // Add more Positioned widgets for additional texts
        ],
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    super.dispose();
  }
}
