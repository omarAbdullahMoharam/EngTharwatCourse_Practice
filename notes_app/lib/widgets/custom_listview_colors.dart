import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import 'custom_note_color.dart';

class ScrollableColorsPallet extends StatefulWidget {
  const ScrollableColorsPallet({super.key});

  @override
  State<ScrollableColorsPallet> createState() => _ScrollableColorsPalletState();
}

class _ScrollableColorsPalletState extends State<ScrollableColorsPallet> {
  int? currentIndex = 0;
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
                  },
                );
              });
        },
      ),
    );
  }
}
