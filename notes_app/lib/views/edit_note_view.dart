import 'package:flutter/material.dart';

import '../widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String editNoteID = 'EditView';

  @override
  Widget build(BuildContext context) {
    return const EditViewBody();
  }
}
