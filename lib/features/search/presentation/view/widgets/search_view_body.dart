import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:notes_app/features/search/presentation/manager/cubit/search_state.dart';
import 'package:notes_app/features/search/presentation/view/widgets/notes_sliver_list.dart';
import 'package:notes_app/features/search/presentation/view/widgets/search_result_builder.dart';
import 'package:notes_app/features/search/presentation/view/widgets/search_sliver_app_bar.dart';
import 'package:notes_app/features/search/presentation/view/widgets/search_text_field.dart';

import 'package:notes_app/widgets/notes_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SearchSliverAppBar(),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Column(
              children: [
                SizedBox(height: 16),
                SearchTextField(),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
        SearchResultBuilder(),
      ],
    );
  }
}
