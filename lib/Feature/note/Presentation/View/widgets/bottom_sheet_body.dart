import 'package:flutter/material.dart';
import 'package:notes_app/Core/Utils/constant_colors.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_text_field.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12),
              CustomTextField(hint: 'title'),
              SizedBox(height: 10),

              CustomTextField(hint: 'content', maxLines: 6),
              SizedBox(height: 30),
              CustomButton(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

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
