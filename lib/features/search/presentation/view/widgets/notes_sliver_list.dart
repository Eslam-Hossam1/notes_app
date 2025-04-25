import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesSliverList extends StatelessWidget {
  const NotesSliverList({super.key, required this.notesList});
  final List<NoteModel> notesList;
  final List<Color> colors = const [
    Color(0xffFFCD7B),
    Color(0xffE8E897),
    Color(0xff77D6EF),
    Color(0xffD49DDD),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: notesList.length,
        itemBuilder: (context, index) {
          return NoteItem(
            note: notesList[index],
          );
        });
  }
}
