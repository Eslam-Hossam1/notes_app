import 'package:notes_app/models/note_model.dart';

abstract class NotesStates{}
class NotesInitailState extends NotesStates {}

class NotesLoadingState extends NotesStates {}

class NotesSuccesState extends NotesStates {


}

class NotesFailureState extends NotesStates {
  final String errMessage;

  NotesFailureState({required this.errMessage});
}
