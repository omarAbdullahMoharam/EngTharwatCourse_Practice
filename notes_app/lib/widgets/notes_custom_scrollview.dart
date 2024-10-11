import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_card.dart';

import 'custom_empty_note_view.dart';

class NotesScrollView extends StatelessWidget {
  const NotesScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> myNotes = BlocProvider.of<NotesCubit>(context).notes!;
        if (myNotes.isEmpty) {
          return const EmptyNotesView();
        }
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  // you can handle it here by checking
                  //BlockProvider(context,state){
                  //childCount: state is NoteSuccess ? state.notes.length:0
                  //............
                  //}

                  childCount: myNotes.length,
                  (context, index) {
                    return CustomNoteCard(note: myNotes[index]);
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
