import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Feature/note/Data/Repositories/Models/note_model.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_button.dart';
import 'package:notes_app/Feature/note/Presentation/View/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> key = GlobalKey();

  String? title, content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 12),
          CustomTextFormField(
            hint: 'title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 10),

          CustomTextFormField(
            hint: 'content',
            maxLines: 6,
            onSaved: (value) => content = value,
          ),
          SizedBox(height: 30),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    context.read<AddNoteCubit>().addNote(
                      NoteModel(
                        title: title!,
                        content: content!,
                        dateTime: DateTime.now().toString(),
                        color: Colors.white.value,
                      ),
                    );
                  } else {
                    // el autovalidatemode.always da hwa by3od y4of ana ktbt 7aga wla la kol ma aktb 7aga hwa y4yl el error w lma ams7 kolo y7ot el error tani
                    // bs ana mbkon4 3ayz da el yzhr f el awl 5als f b5li el autovalidatemode ykon disabled f el awl 34an mykon4 gaybly error abl ma ay user asln
                    // ykon das 3la zorar el add
                    // w awl ma el user ydos 3la zorar el add ana b2a hbd2 a4of 7war el autovalidatemode
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
