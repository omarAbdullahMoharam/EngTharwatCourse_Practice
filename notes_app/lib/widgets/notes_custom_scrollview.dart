import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_card.dart';

class NotesScrollView extends StatelessWidget {
  const NotesScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              // childCount: ,
              (context, index) => const CustomNoteCard(),
            ),
          )
        ],
      ),
    );
  }
}
