import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/views/components/category_view.dart';

import '../../models/category_model.dart';

// ignore: must_be_immutable
class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({
    super.key,
    required this.image,
    required this.title,
    required this.categoryModel,
  });
  final String image;
  final String title;
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                categoryContent: categoryModel.type,
              );
            },
          ),
        );
      },
      child: Container(
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
      ),
    );
  }
}
