import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';


class BoardingPage extends StatelessWidget {
  const BoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30,),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40,),
            Text("Court Booking", style: GoogleFonts.poppins( fontSize: 24, fontWeight: FontWeight.bold

            ),
            ), 
            SizedBox(height: 15,),
            Text("Easily and quickly book sports courts at your convienece, Choose from a variety of courts. select your preferred duration, and confirm your bookin seamlessly",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 16, 
            color: fromCssColor('#4B5563')
            ),
            ),
          ],
        ),
      ),
    );
  }
}