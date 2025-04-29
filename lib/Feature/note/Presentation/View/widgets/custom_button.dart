import 'package:flutter/material.dart';
import 'package:notes_app/Core/Utils/constant_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.isLoading});
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: mintGreen,
        ),
        child: Center(
          child:
              isLoading
                  ? SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(color: black),
                  )
                  : Text(
                    'Add',
                    style: TextStyle(color: black, fontWeight: FontWeight.bold),
                  ),
        ),
      ),
    );
  }
}
