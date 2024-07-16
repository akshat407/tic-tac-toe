import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class CustomButtom extends StatelessWidget {

  final VoidCallback onTap;
  final String text;
  final Color color;
  const CustomButtom({Key?key,required  this.onTap,required this.text, required this.color}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      decoration: BoxDecoration(
        boxShadow: [
        
        ]
      ),
      child: ElevatedButton(
        onPressed: onTap, 
        child: Center(
          child: Text(text,style: 
           GoogleFonts.luckiestGuy(
            textStyle:TextStyle(fontSize: 20,color: Colors.white,)
           ),
          
                 
          ),
        ),
        
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width, 50), backgroundColor: color,
          
        ),
        ),
    );
  }
}