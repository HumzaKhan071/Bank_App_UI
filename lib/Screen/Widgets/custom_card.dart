import 'package:bank_app_ui/Screen/card_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => CardScreen()));
      },
      child: Container(
        width: 250,
        height: 150,
        decoration: BoxDecoration(
            color: Color(0xFF002C56), borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Positioned(
                bottom: -5,
                right: -5,
                child: Container(
                    height: 555,
                    width: 555,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFF6310),
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
                    "\$2,983.32",
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
                left: -5,
                top: 40,
                child: Container(
                    height: 500,
                    width: 550,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFFFD600)),
                    ))),
          ],
        ),
      ),
    );
  }
}
