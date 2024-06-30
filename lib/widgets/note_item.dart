import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/delete_note_dialog.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, EditNoteView.id, arguments: note);
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 18),
                    child: Text(
                      note.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    note.subTitle,
                    style: TextStyle(
                      color: Color(0xff312F31).withOpacity(.7),
                      fontSize: 16,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (context) {
                            return DeleteNoteDialog(note: note,);
                          });
                      
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, right: 32, bottom: 24),
                child: Text(
                  note.date,
                  style: TextStyle(
                      color: Color(0xff312F31).withOpacity(.7), fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
