import 'package:flutter/material.dart';
import 'package:notes_app/Feature/edit_note/Presentation/View/Widgets/edit_note_view.dart';
import 'package:notes_app/Feature/note/Data/Repositories/Models/note_model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody(note: note));
  }
}
