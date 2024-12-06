import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/models/note_model.dart';

import '../../constans.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllData() {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      notes = notesBox.values.toList();//get data from the notes box
emit(NotesSuccess());

  }
}
