import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initialized Hive Package
  await Hive.initFlutter();

  // until now you created a typeAdabter and a box named "notes_box"
  // 🔻before you start to store the data into the DB You need to initialize
  // the data adapter to be configured to convert data into box adapter as follows
  // 🔻🔻🔻🔻 by passing the GENERATED TypeAdapter BY BUILD_RUNNER which Takes
  // a NoteModel
  Hive.registerAdapter(NoteModelAdapter());

  // Open Hive Box (Like Create Collection or Table ) To store Data in
  await Hive.openBox<NoteModel>(kNotesBox);

  // To understand the background proccess of States which is triggered
  Bloc.observer = SimpleBlocObserver();
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
