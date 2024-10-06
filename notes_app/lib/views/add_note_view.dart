import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/widgets/custom_snackbar.dart';
import '../cubits/add_note/add_note_cubit.dart';
import '../widgets/custom_note_form.dart';

// 🚨🚨🚨 My idea by allowing the user to make an Empty Note and We can do this
//  by removing the validation of the custom_textFied and remove the formValidation

class AddNote extends StatelessWidget {
  const AddNote({super.key});
  @override
  Widget build(BuildContext context) {
    final bottomInsets = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.only(
        right: 12.0,
        left: 12,
        bottom: bottomInsets,
      ),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Row(
                  children: [
                    Text('Sorry Failed to Add, Try again😞❗'),
                    Spacer(),
                    Icon(
                      Icons.error,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            );
            log(state.errorMessage);
          }
          if (state is AddNoteSuccess) {
            showSnackBar(
              context: context,
              message: 'Your Note Added',
              icon: Icons.check_circle,
              color: Colors.green,
            );
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: const SingleChildScrollView(
              child: AddNoteForm(),
            ),
          );
        },
      ),
    );
  }
}
