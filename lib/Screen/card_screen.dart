import 'package:bank_app_ui/Screen/Widgets/chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/custom_trans.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 400,
            height: 209,
            decoration: BoxDecoration(
              color: Color(0xFF002C56),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Balance",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.white),
                          ),
                          Image.asset(
                            "assets/visa-icon.png",
                            height: 40,
                          )
                        ],
                      ),
                      Text(
                        "\$12,983.32",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "****4567",
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "12/22",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                      text: "Weekly |",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      children: [
                    TextSpan(
                      text: " MONTHLY ",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xFF002C56),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "| YEARLY",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    )
                  ]))
            ],
          ),
          Chart(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
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
                SizedBox(height: 20),
                Container(
                  height: 80,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFD600),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Order a new Card",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
