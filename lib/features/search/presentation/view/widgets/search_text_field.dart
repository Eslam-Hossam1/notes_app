import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/features/search/presentation/manager/cubit/search_cubit.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style:const TextStyle(
        color: Colors.white,
        fontSize: 16,
        decoration: TextDecoration.none,
      ),
      onChanged: (value) => context.read<SearchCubit>().searchNotes(
            value,
            context.read<NotesCubit>().notesList ?? [],
          ),
      decoration:const InputDecoration(
        hintText: "Search notes...",
        border: OutlineInputBorder(),
      ),
    );
  }
}
