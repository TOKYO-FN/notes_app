import 'package:flutter/material.dart';
import 'package:notes_app/Feature/note_view/views/widgets/custom_appbar.dart';
import 'package:notes_app/Feature/note_view/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + kToolbarHeight - 12,
              child: const CustomAppbar(),
            ),

            SizedBox(height: 5),
            Expanded(child: ListViewBuilder()),
          ],
        ),
      ),
    );
  }
}
