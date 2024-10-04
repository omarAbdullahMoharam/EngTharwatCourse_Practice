import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  // initialized Hive Package
  await Hive.initFlutter();
  // Open Hive Box (Like Create Collection or Table ) To store Data in
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NotesView.notesID: (context) => const NotesView(),
        EditNoteView.editNoteID: (context) => const EditNoteView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      initialRoute: NotesView.notesID,
    );
  }
}
