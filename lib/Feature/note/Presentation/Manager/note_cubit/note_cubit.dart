import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Core/Utils/constants.dart';
import 'package:notes_app/Feature/note/Data/Repositories/Models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NoteSuccess(notes: notes));
    } catch (e) {
      emit(NoteFailure(errMessage: e.toString()));
    }
  }
}
