import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/CustomeTextField.dart';
import 'package:notes_app/widgets/custome_app_bar.dart';
import 'package:notes_app/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static const String id = "EditNoteView";

  @override
  Widget build(BuildContext context) {
    NoteModel note=(ModalRoute.of(context)!.settings.arguments)! as NoteModel;
    return Scaffold(
      body: EditNoteViewBody(note: note,),
    );
  }
}
