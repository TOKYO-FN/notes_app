import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 12),
            CustomTextField(label: 'Input Text'),
            SizedBox(height: 5),
            CustomTextField(label: 'Input Text'),
            SizedBox(height: 5),
            CustomTextField(label: 'Input Text'),
          ],
        ),
      ),
    );
  }
}
