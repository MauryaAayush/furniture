import 'package:flutter/material.dart';
import 'package:furniture/utils/cartProduct.dart';
import 'package:google_fonts/google_fonts.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {

    var productData = ModalRoute.of(context)!.settings.arguments as Map;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            height: height * 0.45,
            width: width,
            decoration: BoxDecoration(color: Color(0xFF35383F)),
            child: Stack(
              children: [
            Positioned(
            top: 10,
            left: 45,
            child: Image.asset(
              productData["img"],
              height: height * 0.4,
              width: width * 0.8,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: InkWell(
              onTap: () {
                setState(() {
                  count = 0;
                });

                Navigator.of(context).pushReplacementNamed('/home');
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

                Positioned(
                  top: 35,
                  right: 20,
                  child:InkWell(
                    onTap: () {

                      setState(() {
                        Navigator.of(context).pushNamed('/third');
                      });
                    },
                    child: Stack(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        if (cart.isNotEmpty)  // Display count only if the cart is not empty
                          Positioned(
                            top: -5,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red, // Adjust color as needed
                              ),
                              child: Text(
                                '${cart.length}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                      ],
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
                    height: height * 0.008,
                    width: width * 0.08,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  Container(
                    height: height*0.01,
                    width: width*0.04,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1F222A),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: height*0.01,
                    width: width*0.03,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1F222A),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: height*0.01,
                    width: width*0.04,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1F222A),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: height*0.01,
                    width: width*0.03,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1F222A),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      )

    ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: const EdgeInsets.symmetric(
                horizontal: 15
              ),
              height: height,
              width: width,
              decoration: const BoxDecoration (
                // color: Colors.blue
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(productData['text'],style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),),
                
                
                        const Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                    const SizedBox.square(dimension: 10),
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
                            productData['sale'],
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        const SizedBox.square(dimension: 15,),
                        const Icon(
                          Icons.star_half,
                          color: Colors.white,
                
                        ),
                        const SizedBox.square(dimension: 8),
                
                        Text(productData['rate'],style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          )
                        ),)
                      ],
                    ),
                    const SizedBox.square(dimension: 15),

                    const Divider(thickness: 1),

                    const SizedBox.square(dimension: 15),
                    Text(
                      'Description',style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize:18,
                        fontWeight: FontWeight.w600,
                      )
                    ),),
                    const SizedBox.square(dimension: 10),
                    Text(
                      'Elevate your seating experience to new heights with our LuxeComfort Premium Chair. Meticulously crafted for the connoisseur of comfort and style, this chair seamlessly blends ergonomic design with exquisite aesthetics.',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                           color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w500
                        )
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox.square(dimension: 10),
                    Text(
                      'Color',style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                    ),),
                    const SizedBox.square(dimension: 10),
                    const Row(
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
                    const SizedBox.square(dimension: 20),
                
                    Row(
                      children: [
                        Text('Quantity',style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,fontWeight: FontWeight.w600,
                            ) ),),
                        const SizedBox.square(dimension: 20),
                        Container(
                          height: height*0.055,
                          width: width*0.3,
                          decoration: const BoxDecoration(
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
                                child: const Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              // SizedBox.square(dimension: 20,),
                              Text('$count',style: const TextStyle(
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
                                child: const Icon(
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
                
                    const SizedBox.square(dimension: 15),

                    const Divider(thickness: 1),
                
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total price',style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  )
                                ),),
                                Text('\$${productData['price']}', style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w700,
                                  )
                                ),),
                
                              ],
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                cart.add(productData);
                              });

                              print('$productData');
                            },
                            child: Container(
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
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

int count = 0;
int index = 0;