import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/components/newsItem.dart';

Widget newsBuilder(List<NewsModel> newsList) {
  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: newsList.length,
    itemBuilder: (context, index) => NewsItem(
      news: newsList[index],
    ),
  );
}
