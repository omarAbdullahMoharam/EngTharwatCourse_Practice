import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/components/CategoriesListView.dart';
import 'package:news_app/views/components/news_listView_builder.dart';

import 'components/LoadingIndicator.dart';
import 'components/empty_news.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = const [
    CategoryModel(
        image: 'assets/technology.jpeg',
        catName: 'Technology',
        type: 'technology'),
    CategoryModel(
      image: 'assets/Entertainment.jpg',
      catName: 'Entertainment',
      type: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      catName: 'Sports',
      type: 'sports',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      catName: 'Health',
      type: 'health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      catName: 'Science',
      type: 'science',
    ),
    CategoryModel(
        image: 'assets/business.avif', catName: 'Business', type: 'business'),
    CategoryModel(
      image: 'assets/general.avif',
      catName: 'General',
      type: 'travel',
    ),
  ];

  List<NewsModel> newsList = [];
  bool isLoading = true;

  @override
  void initState() {
    fetchLatestNews();
    super.initState();
  }

  Future<void> fetchLatestNews() async {
    final newsList = await NewsService(
      Dio(),
    ).getLatest(category: 'technology');
    setState(() {
      this.newsList = newsList;
      isLoading = false;
    });
  }

  // Future<void> fetchLatestNews() async {
  //   try {
  //     final newsList = await NewsService(Dio()).getLatest();
  //     setState(() {
  //       this.newsList = newsList;
  //       isLoading = false;
  //     });
  //   } catch (e) {
  //     // Handle error
  //     setState(() {
  //       isLoading = false;
  //     });
  //   }
  // }

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
            ? const LoadingIndicator(
                position: 0.8,
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
                  newsList.isEmpty
                      ? const SliverToBoxAdapter(
                          child: EmptyNews(),
                        )
                      : const NewsListViewBuilder(
                          category: 'environment',
                        ),
                ],
              ),
      ),
    );
  }
}
