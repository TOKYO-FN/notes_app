import 'package:flutter/material.dart';
import 'package:notes_app/Core/Utils/constant_colors.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return NoteItem(
          color: purple,
          date: '18 April, 2025',
          title: 'Flutter Tips',
          subtitle: 'Build Your Career with Youssef Magdy',
        );
      },
      itemCount: 10,
    );
  }
}
