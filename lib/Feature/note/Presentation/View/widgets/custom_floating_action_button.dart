import 'package:flutter/material.dart';
import 'package:notes_app/Core/Utils/constant_colors.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/bottom_sheet_body.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: mintGreen,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          context: context,
          builder:
              (context) => Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: BottomSheet(
                  onClosing: () {},
                  builder: (context) => BottomSheetBody(),
                ),
              ),
        );
      },
      child: const Icon(Icons.add, color: black),
    );
  }
}
