import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_button.dart';
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
                        color: Colors.indigo[300]!.value,
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

final List<Color> colorPallet = [
  Colors.lightBlue,
  Colors.teal,
  Colors.purpleAccent,
  Colors.indigoAccent,
  const Color(0xFF64DD17),
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.yellow,
  Colors.lightGreen,
];

class CustomNoteColor extends StatelessWidget {
  const CustomNoteColor({super.key, required this.colorIndex});
  final int colorIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4),
      child: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 42,
          backgroundColor: colorPallet[colorIndex],
        ),
      ),
    );
  }
}

class ScrollableColorsPallet extends StatelessWidget {
  const ScrollableColorsPallet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorPallet.length,
        itemBuilder: (context, index) {
          return CustomNoteColor(colorIndex: index);
        },
      ),
    );
  }
}
