import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Feature/note/Data/Repositories/Models/note_model.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/note_cubit/note_cubit.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_appbar.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + kToolbarHeight,
              child: CustomAppbar(
                title: 'Edit Note',
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.content = content ?? widget.note.content;
                  widget.note.save();
                  BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                icon: Icon(Icons.check),
              ),
            ),
            CustomTextFormField(
              hint: widget.note.title,
              onChanged: (data) => title = data,
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              hint: widget.note.content,
              onChanged: (data) => content = data,
              maxLines: 6,
            ),
          ],
        ),
      ),
    );
  }
}
