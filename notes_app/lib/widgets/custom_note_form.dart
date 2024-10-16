import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_button.dart';
import 'custom_listview_colors.dart';
import 'custom_textformfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'Content',
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 5,
          ),
          const ScrollableColorsPallet(),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formattedDate =
                          DateFormat('MMMM d, y').format(currentDate);

                      NoteModel note = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedDate,
                        color:
                            BlocProvider.of<AddNoteCubit>(context).color.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                      log('note add button working');
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
