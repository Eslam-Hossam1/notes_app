class AddNoteStates {}

class AddNoteInitailState extends AddNoteStates {}

class AddNoteLoadingState extends AddNoteStates {}

class AddNoteSuccesState extends AddNoteStates {}

class AddNoteFailureState extends AddNoteStates {
  final String errMessage;

  AddNoteFailureState({required this.errMessage});
}
