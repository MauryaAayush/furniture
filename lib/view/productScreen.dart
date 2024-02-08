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
      body: SingleChildScrollView(
        child: Column(
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
                        height: height * 0.4,
                        width: width * 0.85,
                        fit: BoxFit.contain,
                      ),
                      Positioned(
                        top: 30,
                        left: 10,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/home');
                          },
                          child: const CircleAvatar(
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
                                height: height*0.008,
                                width: width*0.08,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                              ),
                              Container(
                                height: height*0.01,
                                width: width*0.04,
                                decoration: BoxDecoration(
                                    color: Color(0xFF1F222A),
                                   shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                height: height*0.01,
                                width: width*0.03,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1F222A),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                height: height*0.01,
                                width: width*0.04,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1F222A),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                height: height*0.01,
                                width: width*0.03,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1F222A),
                                  shape: BoxShape.circle,
                                ),
                              ),
        
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
        
                child: Column(
                  children: [
                    Text('hello',style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    ),

                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration (
                        color: Colors.blue
                      ),
                    )
        
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
