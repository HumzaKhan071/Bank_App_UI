import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String amount;
  final String ibanNo;
  const CustomContainer(
      {Key? key,
      required this.color,
      required this.amount,
      required this.ibanNo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Balance",
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                Image.asset("assets/Icon feather-share.png"),
              ],
            ),
            SizedBox(height: 10),
            Text(amount,
                style: GoogleFonts.poppins(
                    fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(
              "IBAN",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(ibanNo,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ))
          ],
        ),
      ),
    );
  }
}
