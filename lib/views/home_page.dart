import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sport Courts",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600, fontSize: 26),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          itemCount: 1,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10,);
          },
          itemBuilder: (context, index){
            return Container(width: double.infinity, height: 300,  decoration: BoxDecoration(
              color: Colors.amber,
            ),
            );
          },
        
        ),
      ),
    );
  }
}