import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_note_card.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppbar(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomNoteCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
