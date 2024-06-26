import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
  final List<String> notes = const ["notes"];
  final List<Color> colors = const [
    Color(0xffFFCD7B),
    Color(0xffE8E897),
    Color(0xff77D6EF),
    Color(0xffD49DDD),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return NoteItem(
            color: colors[index % colors.length],
          );
        });
  }
}
