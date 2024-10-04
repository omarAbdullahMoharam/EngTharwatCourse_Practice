import 'package:flutter/material.dart';

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
          const SizedBox(
            height: 64,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
