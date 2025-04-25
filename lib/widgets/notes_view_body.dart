import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit_states.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/features/search/presentation/view/search_view.dart';
import 'package:notes_app/widgets/custome_app_bar.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Column(
        children: [
          addHieghtSpace(50),
          CustomeAppBar(
            title: "Notes",
            icon: Icons.search,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchView(),
              ),
            ),
          ),
          addHieghtSpace(12),
          Expanded(
            child: BlocBuilder<NotesCubit, NotesStates>(
              builder: (context, state) {
                return NotesListview(
                  notesList: context.read<NotesCubit>().notesList ?? [],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
