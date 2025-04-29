import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Feature/note/Data/Repositories/Models/note_model.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/note_cubit/note_cubit.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/note_item.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes ?? [];
        return ListView.builder(
          itemBuilder: (context, index) {
            debugPrint('${notes.length}');
            return NoteItem(
              noteModel: notes[index],
              color:
                  [
                    Color(0xfff5d7b0),
                    Color(0xffd15b56),
                    Color(0xffc43138),
                    Color(0xff7ba8a3),
                    Color(0xff3e909d),
                    Color(0xff007896),
                    Color(0xff004e61),
                  ][index % 7],
            );
          },
          itemCount: notes.length,
        );
      },
    );
  }
}
