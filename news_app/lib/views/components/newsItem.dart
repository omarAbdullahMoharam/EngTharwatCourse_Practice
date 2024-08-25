// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.news,
  });
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            news.urlToImage,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          news.title,
          style: GoogleFonts.kadwa(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          news.description,
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
    );
  }
}
