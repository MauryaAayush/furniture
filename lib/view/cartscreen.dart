import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

    void main()
    {
      runApp(const CartScreen());
    }

    class CartScreen extends StatefulWidget {
      const CartScreen({super.key});

      @override
      State<CartScreen> createState() => _CartScreenState();
    }

    class _CartScreenState extends State<CartScreen> {
      @override
      Widget build(BuildContext context) {
        double height = MediaQuery.of(context).size.height;
        double width = MediaQuery.of(context).size.width;

        return Scaffold(
          backgroundColor: Color(0xFF181A20),
          body: SingleChildScrollView(
            child: Column(
              children: [
              Container(
                padding: EdgeInsets.fromLTRB(5, 25, 0, 0),
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/logo.png',
                    height:height*0.09,
                    width: width*0.2,
                    ),
                    Text('My Cart',style: GoogleFonts.poppins(
                      textStyle : TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,

                      )
                    ),)
                  ],
                ),
              )
              ],
            ),
          ),
        );

      }
    }
