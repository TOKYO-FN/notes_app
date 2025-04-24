import 'package:flutter/material.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_appbar.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

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
                onPressed: () {},
                icon: Icon(Icons.check),
              ),
            ),
            CustomTextFormField(hint: 'title'),
            SizedBox(height: 10),
            CustomTextFormField(hint: 'content', maxLines: 6),
          ],
        ),
      ),
    );
  }
}
