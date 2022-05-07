import 'package:bank_app_ui/Screen/Widgets/bottom_navigation.dart';
import 'package:bank_app_ui/Screen/Widgets/custom_card.dart';
import 'package:bank_app_ui/Screen/Widgets/custom_container.dart';
import 'package:bank_app_ui/Screen/Widgets/custom_trans.dart';
import 'package:bank_app_ui/Screen/Widgets/visa_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();

    int _currentPage = 0;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFF6310),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Bank App",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color(0xFF002C56),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Image.asset(
                  "assets/Group 2.png",
                  color: Color(0xFF002C56),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
                options: CarouselOptions(
                    height: 200,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPage = index;
                      });
                    }),
                items: [
                  CustomContainer(
                    color: Color(0xFFFFD600),
                    amount: "\$12,983.32",
                    ibanNo: "GB12B ARC2 00318 1237 2737",
                  ),
                  CustomContainer(
                    color: Color(0xFFFF6310),
                    amount: "\$22,7534.32",
                    ibanNo: "GB12B RBC3 00789 1237 9797",
                  ),
                ]),
            Center(
              child: DotsIndicator(
                dotsCount: 3,
                position: 0,
                decorator: DotsDecorator(
                  activeColor: Color(0xFFFF6310),
                  color: Color(0xFFE5E5E5),
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                Row(
                  children: [
                    Text(
                      "See all",
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset("assets/Icon feather-arrow-right.png")
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomTrans(
              img: "Image 3",
              name: "Starbucks",
              price: "-\$5.65",
            ),
            SizedBox(height: 10),
            CustomTrans(
              img: "Image 6",
              name: "NETFLIX",
              price: "-\$10.00",
            ),
            SizedBox(height: 10),
            CustomTrans(
              img: "Mask Group 1",
              name: "Bank Transfer",
              price: "-\$120.00",
            ),
            SizedBox(height: 40),
            Text(
              "My Cards",
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 64,
                    width: 67,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFE5E5E5)),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Color(0xFF002C56),
                        size: 48,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  CustomCard(),
                  SizedBox(width: 10),
                  VisaCard()
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: DotsIndicator(
                dotsCount: 3,
                position: 0,
                decorator: DotsDecorator(
                  activeColor: Color(0xFFFF6310),
                  color: Color(0xFFE5E5E5),
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SalomanNav(),
    );
  }
}
