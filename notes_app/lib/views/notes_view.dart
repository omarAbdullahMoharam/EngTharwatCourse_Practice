import 'package:flutter/material.dart';
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
            context: context,
            builder: (context) => const AddNote(),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 18),
            child: TextField(
              enabled: true,
              decoration: InputDecoration(
                hintText: 'Title',
                hintStyle: const TextStyle(
                  color: Colors.teal,
                  fontSize: 18,
                ),
                alignLabelWithHint: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 60, horizontal: 12),
              filled: true,
              fillColor: Colors.grey[900],
              hintText: 'Content',
              hintStyle: const TextStyle(color: Colors.teal),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const Spacer(),
          MaterialButton(
            padding: const EdgeInsets.symmetric(vertical: 15),
            onPressed: () {},
            minWidth: double.infinity,
            color: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            splashColor: Colors.tealAccent.shade700,
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
