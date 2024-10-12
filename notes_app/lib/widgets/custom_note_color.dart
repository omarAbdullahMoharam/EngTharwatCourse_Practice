import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class CustomNoteColor extends StatefulWidget {
  const CustomNoteColor({
    super.key,
    required this.colorIndex,
    required this.isSelected,
    required this.onSelected,
  });
  final int colorIndex;
  final bool isSelected;
  final VoidCallback onSelected;
  @override
  State<CustomNoteColor> createState() => _CustomNoteColorState();
}

class _CustomNoteColorState extends State<CustomNoteColor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4),
      child: GestureDetector(
        onTap: widget.onSelected,
        child: widget.isSelected
            ? CircleAvatar(
                radius: 42,
                backgroundColor: colorPallet[widget.colorIndex],
                child: const Center(
                  child: Icon(
                    Icons.check,
                    size: 44,
                    color: Colors.white,
                  ),
                ),
              )
            : CircleAvatar(
                radius: 42,
                backgroundColor: colorPallet[widget.colorIndex],
              ),
      ),
    );
  }
}
