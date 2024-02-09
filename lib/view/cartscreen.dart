import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/cartProduct.dart';

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

        // var productData = ModalRoute.of(context)!.settings.arguments as Map;


        double height = MediaQuery.of(context).size.height;
        double width = MediaQuery.of(context).size.width;

        return Scaffold(
          backgroundColor: Color(0xFF181A20),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                // color: Colors.yellow,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/logo.png',
                    height:height*0.08,
                    width: width*0.2,
                    ),
                    Text('My Cart',style: GoogleFonts.poppins(
                      textStyle : TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      )
                    ),),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(width: 30,)
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      height: height*0.18,
                      width: width*0.9,
                      decoration: BoxDecoration(
                        color: Color(0xFF1F222A),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child:  Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            height: height*0.2,
                            width: width*0.3,
                            decoration: BoxDecoration(
                              color: Color(0xFF35383F),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Image.asset('assets/images/chair.png',fit: BoxFit.cover,),
                          ),
                          Column(
                            children: [
                              Text('chair',style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                )
                              ),
                              ),
                              Text('\$120',style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  )
                              ),),
                            ],
                          ),

                          SizedBox.square(dimension: 50,),
                          Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.end ,
                            children: [
                              InkWell(
                                onTap: () {

                                },
                                child: InkWell(
                                  onTap: () {

                                  },
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),


                              // for increment and decrement
                              Container(
                                height: height*0.045,
                                width: width*0.23,
                                decoration: BoxDecoration(
                                  color: Color(0xFF35383F),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        if(count > 0)
                                        {
                                          setState(() {
                                            count--;
                                            // print(object)
                                          });
                                        }
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    // SizedBox.square(dimension: 20,),
                                    Text('$count',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    )
                                    ),
                                    InkWell(
                                      onTap: () {
                                        count++;
                                        setState(() {
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )

                            ],
                          ),
                        ],
                      )

                    ),
                  ],
                ),
              )
            ],
          ),
        );

      }
    }

    // Widget CartProduct()
    // {
    //   return
    // }

int count = 0;