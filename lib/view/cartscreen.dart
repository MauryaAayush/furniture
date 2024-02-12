import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/cartProduct.dart';

void main() {
  runApp(const CartScreen());
}

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  double calculateTotalPrice() {
    double total = 0.0;
    for (var item in cart) {
      double price = double.parse(item['price']);
      total += (item['quantity'] * price);
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {

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
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: height * 0.08,
                  width: width * 0.2,
                ),
                Text(
                  'My Cart',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  )),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  children: List.generate(
                cart.length,
                (index) => Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.all(20),
                          height: height * 0.18,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                              color: Color(0xFF1F222A),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: height * 0.2,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    color: Color(0xFF35383F),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Image.asset(
                                  cart[index]['img'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: height * 0.12,
                                width: width * 0.3,
                                // color: Colors.red,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      )),
                                      '${cart[index]['text']}',
                                      maxLines: 3,
                                    ),
                                    Text(
                                      '\$${cart[index]['price']}',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // margin: EdgeInsets.symmetric(),
                                      height: height * 0.045,
                                      width: width * 0.23,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF35383F),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              if (cart[index]['quantity'] > 1) {
                                                setState(() {
                                                  cart[index]['quantity']--;
                                                });
                                              }
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text('${cart[index]['quantity']}',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600)),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                cart[index]['quantity']++;
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
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox.square(
                                dimension: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      cart.removeAt(index);
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.delete_outline,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              )),
            ),
          ),
          Container(
              height: height * 0.13,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total price',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                        Text(
                          '\$${calculateTotalPrice().toStringAsFixed(2)}',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                          )),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      height: height * 0.068,
                      width: width * 0.59,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text(
                            'Checkout',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
