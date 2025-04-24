import 'package:flutter/material.dart';
import 'package:notes_app/Core/Utils/constant_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
  });
  final void Function(String?)? onSaved;
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this field is required';
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: borderValue(),
        focusedBorder: borderValue(blue),
        errorBorder: borderValue(red),
        focusedErrorBorder: borderValue(red),
      ),
    );
  }

  OutlineInputBorder borderValue([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? grey, width: 1.5),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
