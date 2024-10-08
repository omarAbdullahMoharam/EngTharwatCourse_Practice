import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, EditNoteView.editNoteID),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              color: Color(noteModel.color),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    title: Text(
                      noteModel.title,
                      style: const TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 8),
                      child: Text(
                        noteModel.subTitle,
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
                      noteModel.date,
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
              onPressed: () {},
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
