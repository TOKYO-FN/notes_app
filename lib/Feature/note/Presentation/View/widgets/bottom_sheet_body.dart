import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/add_note_form.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {},
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading,
                child: AddNoteForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}
