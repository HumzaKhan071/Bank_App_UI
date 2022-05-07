import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 150,
      decoration: BoxDecoration(
          color: Color(0xFF002C56), borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              top: -7,
              right: 10,
              child: Container(
                  height: 555,
                  width: 555,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF009A7B),
                  ))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "****4567",
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Colors.white),
                    ),
                    Image.asset("assets/Icon awesome-cc-visa.png")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "\$12,983.32",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  "12/22",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: 5,
              top: 39,
              child: Container(
                  height: 500,
                  width: 550,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFFFD600)),
                  ))),
        ],
      ),
    );
  }
}
