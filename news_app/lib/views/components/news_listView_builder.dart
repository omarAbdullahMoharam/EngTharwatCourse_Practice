import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/components/news_generator.dart';

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
  var futureResponse;
  @override
  void initState() {
    futureResponse = NewsService(Dio()).getNews();
    // fetchLatestNews();

    super.initState();
  }

  // Future<void> fetchLatestNews() async {
  //   futureResponse = await NewsService(Dio()).getNews();
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
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 500,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  const Icon(
                    Icons.error_outline,
                    size: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sorry ☹️☹️!!\nUn Expected Error Occurred',
                    maxLines: 2,
                    style: GoogleFonts.kadwa(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Please check your internet connection\nand try again 🛜',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: GoogleFonts.kadwa(
                      color: Colors.red,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
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
