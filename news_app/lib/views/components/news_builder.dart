import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/components/newsItem.dart';

class NewsBuilder extends StatefulWidget {
  const NewsBuilder({super.key, required this.news});
  final List<NewsModel> news;
  @override
  State<NewsBuilder> createState() => _NewsBuilderState();
}

class _NewsBuilderState extends State<NewsBuilder> {
  // List<NewsModel> news = [];
  // @override
  // void initState() {
  //   fetchNews();
  //   super.initState();
  // }

  // Future<void> fetchNews() async {
  //   news = await NewsService(Dio()).getNews();
  // }

  // List<NewsModel> newsList = [];
  @override
  Widget build(BuildContext context) {
    //  best solution as performance and more efficient and best case for use in sliver🤍👌
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: widget.news.length,
        (context, index) {
          return NewsItem(
            newsItem: widget.news[index],
          );
        },
      ),
    );
  }
}
