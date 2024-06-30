import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custome_icon_button.dart';

class DeleteNoteDialog extends StatelessWidget {
  const DeleteNoteDialog({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 350,
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          color: Color(0xff313131),
        ),
        child: Column(
          children: [
            addHieghtSpace(24),
            Text(
              "you realy want to delete this note ?",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            addHieghtSpace(40),
            Row(
              children: [
                Spacer(),
                CustomeIcon(
                  backgroundColor: Colors.green,
                  icon: Icons.cancel,
                  onPresed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: 16,
                ),
                CustomeIcon(
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                  onPresed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchNotes();
                    Navigator.pop(context);
                  },
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

