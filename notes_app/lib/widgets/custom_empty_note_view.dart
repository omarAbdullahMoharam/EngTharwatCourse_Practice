import 'package:flutter/material.dart';

class EmptyNotesView extends StatelessWidget {
  const EmptyNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/NoNotesFound.png'),
        ),
        const Text(
          'No Notes Found! 😱\n   Add New Note 🔻',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ],
    );
  }
}
