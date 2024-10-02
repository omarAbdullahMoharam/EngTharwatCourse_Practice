import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'notes_custom_scrollview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 55,
          ),
          CustomAppbar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            // or using listView.builder ❗🔍
            child: NotesScrollView(),
          ),
        ],
      ),
    );
  }
}
