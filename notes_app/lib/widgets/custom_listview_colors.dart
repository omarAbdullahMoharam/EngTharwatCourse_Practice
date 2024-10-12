import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';

import '../helpers/constants.dart';
import 'custom_note_color.dart';

class ScrollableColorsPallet extends StatefulWidget {
  const ScrollableColorsPallet({super.key});

  @override
  State<ScrollableColorsPallet> createState() => _ScrollableColorsPalletState();
}

class _ScrollableColorsPalletState extends State<ScrollableColorsPallet> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorPallet.length,
        itemBuilder: (context, index) {
          return CustomNoteColor(
              colorIndex: index,
              isSelected: currentIndex == index,
              onSelected: () {
                setState(
                  () {
                    currentIndex = index;
                    BlocProvider.of<AddNoteCubit>(context).color =
                        colorPallet[currentIndex];
                  },
                );
              });
        },
      ),
    );
  }
}
