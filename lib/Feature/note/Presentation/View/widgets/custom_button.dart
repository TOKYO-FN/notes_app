import 'package:flutter/material.dart';
import 'package:notes_app/Core/Utils/constant_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: mintGreen,
      ),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(color: black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
