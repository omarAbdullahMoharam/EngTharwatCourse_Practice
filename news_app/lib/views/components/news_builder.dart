import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/components/newsItem.dart';

Widget newsBuilder(List<NewsModel> newsList) {
  return
      //  best solution as performance and more efficient and best case for use in sliver🤍👌
      SliverList(
    delegate: SliverChildBuilderDelegate(
      childCount: newsList.length,
      (context, index) {
        return NewsItem(
          news: newsList[index],
        );
      },
    ),
  );

  // ListView.builder Bad solution as performance issue is too high🔻🔻😡
  //     ListView.builder(
  //   physics: const NeverScrollableScrollPhysics(),
  //   shrinkWrap: true,
  //   itemCount: newsList.length,
  //   itemBuilder: (context, index) => NewsItem(
  //     news: newsList[index],
  //   ),
  // );
}
