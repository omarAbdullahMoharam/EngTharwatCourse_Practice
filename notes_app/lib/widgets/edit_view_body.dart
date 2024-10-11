import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_snackbar.dart';
import 'package:notes_app/widgets/custom_textformfield.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;
  int? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            CustomAppbar(
              title: 'Edit Note',
              icon: Icons.check,
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.color = color ?? widget.note.color;
                // Hive attributes Which will changed Must Be Not Final 🚨🚨
                widget.note.save();
                showSnackBar(
                  context: context,
                  message: 'Note Edited',
                  icon: Icons.check_circle,
                  color: Colors.green,
                );
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextFormField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              onChanged: (value) {
                content = value;
              },
              hintText: widget.note.subTitle,
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}
