import 'package:flutter/material.dart';

class EmptyNotesView extends StatelessWidget {
  const EmptyNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/NoNotesFound.png'),
        const SizedBox(
          height: 200,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'No Notes Found! 😱\n   Add New Note 🔻',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          ),
        ),
      ],
    );
  }
}
