import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_snackbar.dart';
import 'package:notes_app/widgets/edit_view_body.dart';

import '../cubits/notes_cubit/notes_cubit.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditViewBody(note: note),
        ),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              color: Color(note.color),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    title: Text(
                      note.title,
                      style: const TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 8),
                      child: Text(
                        note.subTitle,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 22,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 24, right: 23.0, top: 8),
                    child: Text(
                      note.date,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 5,
            child: IconButton(
              onPressed: () {
                note.delete();
                showSnackBar(
                  context: context,
                  message: 'Note Deleted',
                  icon: Icons.delete,
                  color: Colors.red,
                );
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                log('Note Deleted :\ntitle: ${note.title} \nSubTitle: ${note.subTitle}');
              },
              icon: const Icon(
                Icons.delete,
                size: 34,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
