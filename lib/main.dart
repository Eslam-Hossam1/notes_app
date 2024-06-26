import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff312F31),
          fontFamily: "Poppins",
          brightness: Brightness.dark,
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.black),
          )),
      debugShowCheckedModeBanner: false,
      routes: {
        NotesView.id: (context) => NotesView(),
      },
      initialRoute: NotesView.id,
    );
  }
}
