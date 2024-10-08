import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_card.dart';

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
                    return CustomNoteCard(noteModel: myNotes[index]);
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

class EmptyNotesView extends StatelessWidget {
  const EmptyNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 300,
        ),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Column(
            children: [
              Icon(
                Icons.delete,
                color: Colors.red,
                size: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'No Notes Found! 😱\n   Add New Note 🔻',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          ),
        )
      ],
    );
  }
}
