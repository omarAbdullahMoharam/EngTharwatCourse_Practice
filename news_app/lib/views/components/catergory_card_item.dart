import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15,
        left: 6,
      ),
      width: 160,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.kadwa(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
