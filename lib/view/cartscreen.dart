import 'package:flutter/material.dart';

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
        return Scaffold(
          backgroundColor: Color(0xFF181A20),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      height: height * 0.45,
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
                Column(
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration (
                        // color: Colors.blue
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Mid Century Sofa',style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),),


                                Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                            SizedBox.square(dimension: 10),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: height * 0.025,
                                  width: width * 0.18,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF35383F),
                                      borderRadius: BorderRadius.all(Radius.circular(5))),
                                  child: Text(
                                    '4,866 sold',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ),
                                SizedBox.square(dimension: 15,),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.white,

                                ),
                                SizedBox.square(dimension: 8),

                                Text('4.8 (6,523reviews)',style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    )
                                ),)
                              ],
                            ),
                            SizedBox.square(dimension: 20),
                            Container(
                              height: height*0.001,
                              width: width,
                              decoration: BoxDecoration(
                                  color: Colors.white70
                              ),
                            ),
                            SizedBox.square(dimension: 20),
                            Text(
                              'Description',style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize:18,
                                  fontWeight: FontWeight.w600,
                                )
                            ),),
                            SizedBox.square(dimension: 10),
                            Text(
                              'Elevate your seating experience to new heights with our LuxeComfort Premium Chair. Meticulously crafted for the connoisseur of comfort and style, this chair seamlessly blends ergonomic design with exquisite aesthetics.',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500
                                  )
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox.square(dimension: 10),
                            Text(
                              'Color',style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                )
                            ),),
                            SizedBox.square(dimension: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.brown,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                SizedBox.square(dimension: 10),
                                CircleAvatar(
                                  backgroundColor: Color(0xFF607C8C),
                                ),
                                SizedBox.square(dimension: 10),
                                CircleAvatar(
                                  backgroundColor: Colors.purpleAccent,
                                ),
                                SizedBox.square(dimension: 10),
                                CircleAvatar(
                                  backgroundColor: Color(0xFF79797B),
                                ),
                                SizedBox.square(dimension: 10),
                                CircleAvatar(
                                  backgroundColor: Color(0xFF3D52B0),
                                ),
                                SizedBox.square(dimension: 10),
                                CircleAvatar(
                                  backgroundColor: Color(0xFF009588),
                                ),
                              ],
                            ),
                            SizedBox.square(dimension: 20),

                            Row(
                              children: [
                                Text('Quantity',style: GoogleFonts.poppins(
                                    textStyle:TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,fontWeight: FontWeight.w600,
                                    ) ),),
                                SizedBox.square(dimension: 20),
                                Container(
                                  height: height*0.055,
                                  width: width*0.3,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF35383F),
                                      borderRadius: BorderRadius.all(Radius.circular(30))
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
                                          fontSize: 20,
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
                                ),
                              ],
                            ),

                            SizedBox.square(dimension: 20),

                            Container(
                              height: height*0.001,
                              width: width,
                              decoration: BoxDecoration(
                                  color: Colors.white70
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Total price',style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          )
                                      ),),
                                      Text('\$280.00', style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                          )
                                      ),),

                                    ],
                                  ),
                                  Container(
                                    padding:EdgeInsets.symmetric(horizontal: 40),
                                    height: height*0.068,
                                    width: width*0.59,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.shopping_bag_rounded,
                                        ),
                                        Text('Add to Cart',style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700
                                            )
                                        ),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );

      }
    }
