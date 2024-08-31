import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/components/news_generator.dart';
import 'package:news_app/views/home_page.dart';

import 'LoadingIndicator.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.newsList,
  });

  final List<NewsModel> newsList;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
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
    return isLoading
        ? const SliverToBoxAdapter(
            child: LoadingIndicator(
            position: 0.49,
          ))
        : NewsBuilder(
            news: widget.newsList,
          );
  }
}
