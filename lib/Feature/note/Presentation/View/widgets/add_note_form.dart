import 'package:flutter/material.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_button.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> key = GlobalKey();

  String? title, content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 12),
          CustomTextFormField(hint: 'title', onSaved: (value) => title = value),
          SizedBox(height: 10),

          CustomTextFormField(
            hint: 'content',
            maxLines: 6,
            onSaved: (value) => content = value,
          ),
          SizedBox(height: 30),
          CustomButton(
            onTap: () {
              if (key.currentState!.validate()) {
                key.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                // setState(() {});
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
