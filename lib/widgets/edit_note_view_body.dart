import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/CustomeTextField.dart';
import 'package:notes_app/widgets/custome_app_bar.dart';
import 'package:notes_app/widgets/edit_color_list_view.dart';
import 'package:notes_app/widgets/edit_note_text_field.dart';

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
          EditNoteTextField(
              label: "Title",
              fieldText: widget.note.title,
              onChange: (value) {
                title = value;
              },
              hint: "",
              borderColor: kPrimaryColor,
              maxLines: 1),
          addHieghtSpace(24),
          EditNoteTextField(
              label: "Content",
              fieldText: widget.note.subTitle,
              onChange: (value) {
                subTitle = value;
              },
              hint: "",
              borderColor: kPrimaryColor,
              maxLines: 5),
          addHieghtSpace(16),
          EditColorListView(
            note: widget.note,
          )
        ],
      ),
    );
  }
}
