import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:  Color(0xFF181A20),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: height*0.5,
                width:width,
                decoration: BoxDecoration(color: Color(0xFF35383F)),
              ),
            ],
          ),
          Column(
            children: [
              Container(

              ),
            ],
          ),
        ],
      ),
    );
  }
}
