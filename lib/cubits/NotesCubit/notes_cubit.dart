import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/Models/NoteModel.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes = notesBox.values.toList();
    if (notes.isEmpty)
      emit(NotesFailure(message: "There are no Notes\nStart to Add one"));
    else
      emit(NotesSuccess(notes: notes));
  }
}
