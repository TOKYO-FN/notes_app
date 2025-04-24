import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  CustomSearchIcon({super.key, required this.onPressed, required this.icon});
  VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(55, 85, 89, 90),
      ),
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}
