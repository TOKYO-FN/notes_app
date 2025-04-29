import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Feature/edit_note/Presentation/View/edit_note_view.dart';
import 'package:notes_app/Feature/note/Data/Repositories/Models/note_model.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/note_cubit/note_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel, required this.color});

  final Color color;
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditNoteView()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            ListTile(
              isThreeLine: true,
              iconColor: Colors.black,
              contentPadding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
              title: Text(
                noteModel.title,
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              subtitle: Text(
                '\n${noteModel.content}',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withAlpha(144),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                },
                icon: Icon(Icons.delete),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, bottom: 10),
              child: Text(
                DateFormat(
                  "d MMMM yyyy, h:mm a",
                ).format(DateTime.parse(noteModel.dateTime)),
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
