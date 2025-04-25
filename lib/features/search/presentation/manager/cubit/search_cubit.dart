import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/features/search/presentation/manager/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  void searchNotes(String query, List<NoteModel> notesList) {
    if (query.isEmpty) {
      emit(SearchInitial());
    } else {
      final List<NoteModel> filteredNotes = notesList
          .where((note) =>
              note.title.toLowerCase().contains(query.toLowerCase()) ||
              note.subTitle.toLowerCase().contains(query.toLowerCase()))
          .toList();
      if (filteredNotes.isEmpty) {
        emit(
          SearchEmptyResult(),
        );
      } else {
        emit(
          SearchResult(filteredNotes),
        );
      }
    }
  }
}
