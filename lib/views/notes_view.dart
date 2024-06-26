import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const String id = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NotesAppBar(),
        ],
      ),
    );
  }
}
class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",style: TextStyle(),)
      ],
    );
  }
}