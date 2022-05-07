import 'package:bank_app_ui/Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF002C56),
      body: Stack(
        children: [
          Positioned(
            top: -20,
            right: 5,
            child: Container(
              height: 555,
              width: 555,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFF6310),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Center(
                  child: Text(
                    "Create Bank \nAccount in 3 \nminutes",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.42,
            left: 10,
            child: Text(
              "Easy . \nFast . \nSecure .",
              style: GoogleFonts.poppins(
                  color: Color(0xFF002C56),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Bank App",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Image.asset("assets/Group 2.png"),
          ),
          Positioned(
            top: size.height * 0.8,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFD600),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Already Member?",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
