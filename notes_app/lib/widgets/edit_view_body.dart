import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textformfield.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            CustomAppbar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextFormField(hintText: 'Title'),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(hintText: 'Content', maxLines: 5)
          ],
        ),
      ),
    );
  }
}
