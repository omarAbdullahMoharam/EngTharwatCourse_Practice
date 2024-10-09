import 'package:flutter/material.dart';

class EmptyNotesView extends StatelessWidget {
  const EmptyNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 271,
        ),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Column(
            children: [
              Icon(
                Icons.delete,
                color: Colors.red,
                size: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'No Notes Found! 😱\n   Add New Note 🔻',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          ),
        )
      ],
    );
  }
}
