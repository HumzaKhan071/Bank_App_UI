import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTrans extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  const CustomTrans(
      {Key? key, required this.img, required this.name, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset("assets/$img.png"),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Color(0xFF002C56)),
                ),
                Text("12 AUG, 2020 | 12:23")
              ],
            ),
          ],
        ),
        Text(
          price,
          style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xFF002C56),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
