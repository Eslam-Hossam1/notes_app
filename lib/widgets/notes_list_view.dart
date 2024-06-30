import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
  final List<Color> colors = const [
    Color(0xffFFCD7B),
    Color(0xffE8E897),
    Color(0xff77D6EF),
    Color(0xffD49DDD),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {
        List<NoteModel> notesList =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ListView.builder(
              itemCount: notesList.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return NoteItem(
                  note: notesList[index],
                );
              }),
        );
      },
    );
  }
}
