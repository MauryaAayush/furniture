import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture/view/homescreen.dart';
import 'package:furniture/view/productScreen.dart';
import 'package:furniture/view/splashscreen.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF181A20),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: '/'
           '',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home' : (context) =>  const HomeScreen(),
        '/second' : (context) =>  const ProductScreen(),
      },
    );
  }

}