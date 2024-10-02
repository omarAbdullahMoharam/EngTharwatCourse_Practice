import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

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
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Content', maxLines: 5),
            SizedBox(
              height: 64,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: CustomButton(),
            )
          ],
        ),
      ),
    );
  }
}
