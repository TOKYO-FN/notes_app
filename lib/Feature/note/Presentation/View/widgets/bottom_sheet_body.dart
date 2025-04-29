import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Core/Utils/constant_colors.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/note_cubit/note_cubit.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/add_note_form.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage.toString())),
            );
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NoteCubit>(context).fetchAllNotes();
            Navigator.pop(context);
            CherryToast.info(
              enableIconAnimation: false,
              displayCloseButton: false,
              disableToastAnimation: true,
              title: const Text(
                'Note Added ✔',

                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              inheritThemeColors: true,
              actionHandler: () {},
              onToastClosed: () {},
            ).show(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
