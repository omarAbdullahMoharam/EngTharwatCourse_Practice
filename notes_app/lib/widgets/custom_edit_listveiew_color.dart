import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

import '../helpers/constants.dart';
import 'custom_note_color.dart';

class ScrollableEditColorsPallet extends StatefulWidget {
  const ScrollableEditColorsPallet({super.key, required this.passedNote});
  final NoteModel passedNote;
  @override
  State<ScrollableEditColorsPallet> createState() =>
      _ScrollableEditColorsPalletState();
}

class _ScrollableEditColorsPalletState
    extends State<ScrollableEditColorsPallet> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();

    // Log the actual color value of the note for debugging purposes
    log('Note color value: ${widget.passedNote.color}');

    // Find the color index by comparing the color values
    int foundIndex = findColorIndex(widget.passedNote.color);

    // Log the found index
    log('Found color index: $foundIndex');

    // Fallback to the first color (index 0) if the color is not found
    currentIndex = foundIndex != -1 ? foundIndex : 0;

    log('Current Index: $currentIndex');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorPallet.length,
        itemBuilder: (context, index) {
          return CustomNoteColor(
              colorIndex: index,
              isSelected: currentIndex == index,
              onSelected: () {
                setState(() {
                  currentIndex = index;
                  widget.passedNote.color = kColorPallet[index].value;
                });
              });
        },
      ),
    );
  }
}

int findColorIndex(int colorValue) {
  for (int i = 0; i < kColorPallet.length; i++) {
    if (kColorPallet[i].value == colorValue) {
      return i;
    }
  }
  return -1; // Return -1 if no match is found
}
