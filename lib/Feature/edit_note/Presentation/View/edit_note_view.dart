import 'package:flutter/material.dart';
import 'package:notes_app/Feature/edit_note/Presentation/View/Widgets/edit_note_view.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody());
  }
}
