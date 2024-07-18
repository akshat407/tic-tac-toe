import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color color;
  const CustomTextField({super.key, required this.controller, required this.hintText, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: 10,
            spreadRadius: 2
          )

        ]
      ),
      child: TextField(
        
        controller: controller,
        decoration: InputDecoration(
          fillColor: bgcolor,
          filled: true,
          hintText: hintText
        ),
      ),
    );
  }
}