import 'package:flutter/material.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_appbar.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return EditNoteViewBody();
  }
}

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(onPressed: () {}, icon: Icon(Icons.check)),
        CustomTextField(hint: 'title'),
        CustomTextField(hint: 'content'),
      ],
    );
  }
}
