import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/components/news_generator.dart';

import 'LoadingIndicator.dart';
import 'error_handeler.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  bool isLoading = true;
  // ignore: prefer_typing_uninitialized_variables
  var futureResponse;
  @override
  void initState() {
    futureResponse = NewsService(
      Dio(),
    ).getLatest(category: widget.category);
    // fetchLatestNews();

    super.initState();
  }

  // Future<void> fetchLatestNews() async {
  //   futureResponse = await NewsService(Dio()).getLatest();
  //   // isLoading = false;
  //   setState(() {});
  // }

  //  Test the error Screen 🔻🔻🔻
  // Future<String> _failingFuture() async {
  //   throw Exception("This is a forced error!");
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: futureResponse,
      builder: (context, snapshot) {
        //Data has been fetched
        if (snapshot.hasData) {
          return NewsBuilder(
            news: snapshot.data!,
          );

          // Exception has been thrown
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(child: ErrorScreen()),
          );
        } else {
          //Data is still loading
          return const SliverToBoxAdapter(
            child: LoadingIndicator(position: 0.49),
          );
        }
      },
    );
  }
}



//  return isLoading
//             ? const SliverToBoxAdapter(
//                 child: LoadingIndicator(
//                   position: 0.49,
//                 ),
//               )
//             :

// isLoading
//         ? const SliverToBoxAdapter(
//             child: LoadingIndicator(
//               position: 0.49,
//             ),
//           )
//         : NewsBuilder(
//             news: widget.newsList,
//           );
