import 'package:furniture/utils/Categories.dart';
import 'package:furniture/utils/Product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 38, 10, 12),
                  height: height * 0.08,
                  width: width * 0.918,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 23,
                        backgroundImage: AssetImage('assets/images/me.jpg'),
                        foregroundImage: AssetImage('assets/images/me.jpg'),
                      ),

                      // here we have written the text of 👋 and AM
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '  Good Morning 👋',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            'Aayush Maurya',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),

                      SizedBox.square(
                        dimension: 110,
                      ),

                      Icon(
                        Icons.notifications_none_outlined,
                        size: 28,
                        color: Colors.white,
                      ),

                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 28,
                        color: Colors.white,
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 11),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                  color: Color(0xFF1F222A),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.07,
                    width: width * 0.5,
                  ),
                  const Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special Offers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: height * 0.21,
              width: width,
              decoration: BoxDecoration(
                  color: const Color(0xFF35383F),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '25%',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Text(
                              "Today's Special!",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox.square(
                              dimension: 10,
                            ),
                            Text(
                                "Get discount for every\norder.only valid for today",
                                softWrap: true,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: height * 0.2,
                        width: width * 0.3,
                        // color: Colors.blue,
                        child: Image.asset('assets/images/sofa.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    icon1.length,
                        (index) => CategoriesBox(
                        icon1[index]['text'], icon1[index]['icons'])),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  icon2.length,
                      (index) => CategoriesBox(
                      icon2[index]['text'], icon2[index]['icons'])),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              // color: Colors.blue,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.18,
                      decoration: BoxDecoration(
                          color: const Color(0xFF35383F),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: const Color(0xFF35383F))),
                      child: Text(
                        'All',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Sofa',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Chair',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Table',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.29,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Kitchen',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Lamp',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.35,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Cupboard',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'vase',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                    children: List.generate(
                        r1.length,
                            (index) => InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/second',
                                    arguments: r1[index]
                                );
                              },
                              child: Products(
                              context,
                              r1[index]['img'],
                              r1[index]['text'],
                              r1[index]['rate'],
                              r1[index]['sale'],
                              r1[index]['price']),
                            )))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r2.length,
                            (index) => InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/second',
                                    arguments: r2[index]
                                );
                              },
                              child: Products(
                              context,
                              r2[index]['img'],
                              r2[index]['text'],
                              r2[index]['rate'],
                              r2[index]['sale'],
                              r2[index]['price']),
                            )))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r3.length,
                            (index) => InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/second',
                                    arguments: r3[index]
                                );
                              },
                              child: Products(
                              context,
                              r3[index]['img'],
                              r3[index]['text'],
                              r3[index]['rate'],
                              r3[index]['sale'],
                              r3[index]['price']),
                            )))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r4.length,
                            (index) => InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/second',
                                    arguments: r4[index]
                                );
                              },
                              child: Products(
                              context,
                              r4[index]['img'],
                              r4[index]['text'],
                              r4[index]['rate'],
                              r4[index]['sale'],
                              r4[index]['price']),
                            )))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r5.length,
                            (index) => InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/second',
                                    arguments: r5[index]
                                );
                              },
                              child: Products(
                              context,
                              r5[index]['img'],
                              r5[index]['text'],
                              r5[index]['rate'],
                              r5[index]['sale'],
                              r5[index]['price']),
                            )))),
          ],
        ),
      ),
    );
  }
}

Widget CategoriesBox(String text, Icon icons) => Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
      CircleAvatar(
          backgroundColor: const Color(0xFF35383F),
          // backgroundImage: NetworkImage('https://shop.gkwretail.com/cdn/shop/products/1SeaterSofaAquaLivingRoomArmChairwithTaperedWood-1.jpg?v=1630501220&width=713'),
          radius: 31,
          child: icons),
      const SizedBox.square(dimension: 12),
      Text(
        text,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15)),
      )
    ],
  ),
);

Widget Products(BuildContext context, String img, String text, String rate,
    String sale, String price) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  return Container(
    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),

    // here is the single container.
    // color : Colors.yellow,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Stack (children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              height: height * 0.2,
              width: width * 0.425,
              decoration: const BoxDecoration(
                  color: Color(0xFF35383F),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Stack(
                children: [
                  Image.asset(img, fit: BoxFit.fitWidth),
                  const Positioned(
                    top: 10,
                    right: 15,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF17181A),
                      radius: 13,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(4, 190, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox.square(
                    dimension: 8,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_half,
                        color: Colors.white,
                      ),
                      const SizedBox.square(
                        dimension: 10,
                      ),
                      Text('$rate   |',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox.square(
                        dimension: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: height * 0.025,
                        width: width * 0.19,
                        decoration: const BoxDecoration(
                            color: Color(0xFF35383F),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          sale,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox.square(dimension: 8),
                  Text(price,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ))),
                ],
              ),
            ),
          ],
        ),
        ),
      ],
    ),
  );
}