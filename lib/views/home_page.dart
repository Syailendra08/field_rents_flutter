import 'package:field_rents/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
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
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20),
              ),
              elevation: 2,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),

                      ),
                      color: Colors.grey
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Futsal Court A", style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                            Spacer(),
                            Icon(Icons.star, color: Colors.amber,),
                            Text("4.5", style: GoogleFonts.poppins(
                              fontSize: 16,
                              
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("Indoor || Air Conditioned",
                        style: GoogleFonts.poppins(
                          color: fromCssColor('#4B5563')
                        ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Rp. 50.000/hour", style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                            Spacer(),
                            CustomButton(textButton: "Submit", onPressed: () {
                              
                            },
                            heightButton: 30,
                            widthButton: 100,
                            titleSize: 12,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                
                ],
              ),
            );
          },
        
        ),
      ),
    );
  }
}