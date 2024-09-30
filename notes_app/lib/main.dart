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
      routes: {
        NotesView.notesID: (context) => const NotesView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: NotesView.notesID,
    );
  }
}
