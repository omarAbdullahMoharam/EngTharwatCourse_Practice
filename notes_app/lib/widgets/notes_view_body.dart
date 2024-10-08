import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'custom_appbar.dart';
import 'notes_custom_scrollview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  // 🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨
  // Fetch the data at the start of the Run by the initState()
  // very Important to can show the data 🚨🚨
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
