import 'package:flutter/material.dart';
import 'add_note_view.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String notesID = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.teal,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => const AddNote(),
          );
        },
        child: const Center(
          child: Icon(
            Icons.note_add_outlined,
            color: Colors.black,
            size: 35,
          ),
        ),
      ),
    );
  }
}
