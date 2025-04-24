import 'package:flutter/material.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key, required this.onPressed, required this.icon});
  VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes', style: TextStyle(fontSize: 24)),
        CustomSearchIcon(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
