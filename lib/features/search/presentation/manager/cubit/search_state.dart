
 import 'package:notes_app/models/note_model.dart';

class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchResult extends SearchState {
  final List<NoteModel> notesList;
  SearchResult(this.notesList);
}
final class SearchEmptyResult extends SearchState {

}
