part of 'note_cubit.dart';

sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteSuccess extends NoteState {
  final List<NoteModel> notes;

  NoteSuccess({required this.notes});
}

final class NoteFailure extends NoteState {
  final String errMessage;
  NoteFailure({required this.errMessage});
}
