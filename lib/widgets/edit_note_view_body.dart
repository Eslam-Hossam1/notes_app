import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/CustomeTextField.dart';
import 'package:notes_app/widgets/custome_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          addHieghtSpace(50),
          CustomeAppBar(
            title: "Edit Note",
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
          ),
          addHieghtSpace(50),
          CustomeTextfield(
              onChange: (value) {
                title = value;
              },
              hint: widget.note.title,
              borderColor: kPrimaryColor,
              maxLines: 1),
          addHieghtSpace(24),
          CustomeTextfield(
              onChange: (value) {
                subTitle = value;
              },
              hint: widget.note.subTitle,
              borderColor: kPrimaryColor,
              maxLines: 5),
        ],
      ),
    );
  }
}
