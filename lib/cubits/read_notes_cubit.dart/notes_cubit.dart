import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit_states.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitailState());
  List<NoteModel>? notesList;
  fetchNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
     notesList = notesBox.values.toList();
    emit(NotesSuccesState());
  }
}
