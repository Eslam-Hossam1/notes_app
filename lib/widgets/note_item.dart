import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, EditNoteView.id);
        },
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 18),
                    child: Text(
                      "Flutter Tips",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "Build Your Carer With\nTharwat Samy",
                    style: TextStyle(
                      color: Color(0xff312F31).withOpacity(.7),
                      fontSize: 16,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
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
                  "May 21,2022",
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
