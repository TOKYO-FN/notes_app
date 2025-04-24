import 'package:flutter/material.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_button.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_text_field.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(child: AddNoteForm()),
      ),
    );
  }
}

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
          CustomTextFormField(hint: 'title'),
          SizedBox(height: 10),

          CustomTextFormField(hint: 'content', maxLines: 6),
          SizedBox(height: 30),
          CustomButton(formKey: key),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
