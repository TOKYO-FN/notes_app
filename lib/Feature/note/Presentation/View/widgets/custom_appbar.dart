import 'package:flutter/material.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.title,
  });
  final void Function() onPressed;
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 24)),
        CustomIcon(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
