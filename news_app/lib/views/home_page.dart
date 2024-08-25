import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/components/CategoriesListView.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<CategoryCard> categories = const [
    CategoryCard(image: 'assets/technology.jpeg', catName: 'Technology'),
    CategoryCard(image: 'assets/Entertainment.jpg', catName: 'Entertainment'),
    CategoryCard(image: 'assets/sports.avif', catName: 'Sports'),
    CategoryCard(image: 'assets/health.avif', catName: 'Health'),
    CategoryCard(image: 'assets/science.avif', catName: 'Science'),
    CategoryCard(image: 'assets/business.avif', catName: 'Business'),
    CategoryCard(image: 'assets/general.avif', catName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: GoogleFonts.kadwa(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: GoogleFonts.kadwa(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: CategoriesListView(categories: categories),
    );
  }
}
