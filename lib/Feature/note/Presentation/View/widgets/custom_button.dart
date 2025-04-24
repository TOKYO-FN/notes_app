import 'package:flutter/material.dart';
import 'package:notes_app/Core/Utils/constant_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          debugPrint("kk");
        }
      },
      child: Container(
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
      ),
    );
  }
}
