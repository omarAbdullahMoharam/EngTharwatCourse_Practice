import 'package:flutter/material.dart';
import '../widgets/custom_note_form.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});
  @override
  Widget build(BuildContext context) {
    final bottomInsets = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.only(
        right: 12.0,
        left: 12,
        bottom: bottomInsets,
      ),
      child: const SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
