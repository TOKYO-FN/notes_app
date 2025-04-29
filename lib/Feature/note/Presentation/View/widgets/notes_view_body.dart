import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/note_cubit/note_cubit.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_appbar.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + kToolbarHeight,
              child: CustomAppbar(
                title: 'Note',
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ),

            SizedBox(height: 5),
            Expanded(child: ListViewBuilder()),
          ],
        ),
      ),
    );
  }
}
