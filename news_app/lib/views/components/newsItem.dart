// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/components/LoadingIndicator.dart';
import 'package:news_app/views/news_webView.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.newsItem,
  });
  final NewsModel newsItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return NewsWebView(
                url: newsItem.url,
              );
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
              child: Image.network(
                  newsItem.urlToImage ??
                      'https://th.bing.com/th/id/OIP.0PG09nGnJA0eANPas7qNhQHaJ4?rs=1&pid=ImgDetMain',
                  fit: BoxFit.cover,
                  loadingBuilder: ((context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return const Center(
                    child: LoadingIndicator(
                  position: 0.5,
                ));
              })),
            ),
            Text(
              newsItem.title ?? "",
              style: GoogleFonts.kadwa(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              newsItem.description ?? '',
              style: GoogleFonts.roboto(
                color: Colors.grey.shade900,
                fontSize: 15,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
