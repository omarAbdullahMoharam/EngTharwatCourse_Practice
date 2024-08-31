import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/components/CategoriesListView.dart';
import 'package:news_app/views/components/news_listView_builder.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryCard> categories = const [
    CategoryCard(image: 'assets/technology.jpeg', catName: 'Technology'),
    CategoryCard(image: 'assets/Entertainment.jpg', catName: 'Entertainment'),
    CategoryCard(image: 'assets/sports.avif', catName: 'Sports'),
    CategoryCard(image: 'assets/health.avif', catName: 'Health'),
    CategoryCard(image: 'assets/science.avif', catName: 'Science'),
    CategoryCard(image: 'assets/business.avif', catName: 'Business'),
    CategoryCard(image: 'assets/general.avif', catName: 'General'),
  ];

  List<NewsModel> newsList = [];
  bool isLoading = true;

  @override
  void initState() {
    fetchLatestNews();
    super.initState();
  }

  Future<void> fetchLatestNews() async {
    newsList = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

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
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 4,
                  backgroundColor: Colors.orange,
                ),
              )
            : CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: CategoriesListView(categories: categories),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  NewsListViewBuilder(newsList: newsList),
                ],
              ),
      ),
    );
  }
}
