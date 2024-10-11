import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

import '../widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  static String editNoteID = 'EditView';
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return EditViewBody(
      note: note,
    );
  }
}
