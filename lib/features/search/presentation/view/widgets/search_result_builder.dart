
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:notes_app/features/search/presentation/manager/cubit/search_state.dart';
import 'package:notes_app/features/search/presentation/view/widgets/notes_sliver_list.dart';

class SearchResultBuilder extends StatelessWidget {
  const SearchResultBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return const SliverToBoxAdapter(
              child:  Center(child: Text('Enter a search ')));
        } else if (state is SearchResult) {
          return NotesSliverList(
            notesList: state.notesList,
          );
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: Text('No results found')));
        }
      },
    );
  }
}
