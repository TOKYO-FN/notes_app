import 'package:flutter/material.dart';
import 'package:notes_app/Feature/edit_note/Presentation/View/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.date,
  });

  final Color color;
  final String title;
  final String subtitle;
  final String date;

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
                title,
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              subtitle: Text(
                '\n$subtitle',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withAlpha(144),
                ),
              ),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, bottom: 10),
              child: Text(date, style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
