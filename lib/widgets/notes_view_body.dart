import 'package:flutter/material.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/widgets/custome_app_bar.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          addHieghtSpace(50),
          CustomeAppBar(title:"Notes",icon:Icons.search),
          addHieghtSpace(12),
          Expanded(
            child: NotesListview(),
          )
        ],
      ),
    );
  }
}
