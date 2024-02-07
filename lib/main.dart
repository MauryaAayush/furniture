import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture/view/homescreen.dart';


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


    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
    );
  }
}