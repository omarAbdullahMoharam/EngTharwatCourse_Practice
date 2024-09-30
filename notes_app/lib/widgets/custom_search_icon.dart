import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        width: 46,
        height: 46,
        child: const Center(
          child: Icon(
            Icons.search,
            size: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
