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
      backgroundColor: Color(0xFF181A20),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(color: Color(0xFF35383F)),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/chair.png',
                      fit: BoxFit.fitWidth,
                      height: height * 0.4,
                      width: width * 0.85,
                    ),
                    Positioned(
                      top: 30,
                      left: 10,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF35383F),
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              color: Colors.yellow,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(),
            ],
          ),
        ],
      ),
    );
  }
}
