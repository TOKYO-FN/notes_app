import 'package:flutter/material.dart';
import 'package:notes_app/Core/Utils/constant_colors.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      // child: Center(child: Text()),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                label: Text('InputHere', style: TextStyle(color: grey)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
