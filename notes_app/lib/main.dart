import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/helpers/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';
import 'helpers/constants.dart';
import 'cubits/notes_cubit/notes_cubit.dart';

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
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        routes: {
          NotesView.notesID: (context) => const NotesView(),
          // replaced To Handle the Navigation Corredctly
          // EditNoteView.editNoteID: (context) =>  EditNoteView(note:,),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        initialRoute: NotesView.notesID,
      ),
    );
  }
}
