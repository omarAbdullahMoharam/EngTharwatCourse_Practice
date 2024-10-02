import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

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
          ],
        ),
      ),
    );
  }
}
