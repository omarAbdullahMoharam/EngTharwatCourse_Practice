import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/components/CategoriesListView.dart';
import 'package:news_app/views/components/news_builder.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<CategoryCard> categories = const [
    CategoryCard(image: 'assets/technology.jpeg', catName: 'Technology'),
    CategoryCard(image: 'assets/Entertainment.jpg', catName: 'Entertainment'),
    CategoryCard(image: 'assets/sports.avif', catName: 'Sports'),
    CategoryCard(image: 'assets/health.avif', catName: 'Health'),
    CategoryCard(image: 'assets/science.avif', catName: 'Science'),
    CategoryCard(image: 'assets/business.avif', catName: 'Business'),
    CategoryCard(image: 'assets/general.avif', catName: 'General'),
  ];

  List<NewsModel> newsList = [
    NewsModel(
      title: 'Israel and Hezbollah exchange heavy fire in major escalation',
      description:
          "Israel's attack on Hezbollah at around 04:30 (01:30 GMT) on Sunday was its biggest since the full-scale war between them in 2006.",
      urlToImage:
          'https://ichef.bbci.co.uk/news/1024/cpsprodpb/c8ff/live/fdbcfa30-629e-11ef-8930-ed0e9a7db507.jpg.webp',
    ),
    NewsModel(
      title:
          "القصة الكاملة للباحثة المصرية ريم حامد.. وفاة غامضة في فرنسا وتحرك من الخارجية",
      description:
          "كشفت وزارة الخارجية المصرية تفاصيل واقعة وفاة الباحثة المصرية ريم حامد التي توفيت في فرنسا الخميس الماضي ونشرت الوزارة بيانا قالت فيه : في إطار متابعة وزارة الخارجية والهجرة وشؤون المصريين بالخارج لحادثة وفاة الباحثة المصرية ريم حامد في فرنسا مساء الخميس 22 أغسطس الجاري، بادرت القنصلية العامة لجمهورية مصر العربية في باريس فور تلقيها خبر الوفاة بالتواصل مع السلطات الفرنسية.",
      urlToImage:
          'https://cdn.elbaladtv.net/wp-content/uploads/2024/08/423.jpg',
    ),
  ];
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
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: CustomScrollView(
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
            // SliverToBoxAdapter(child: newsBuilder(newsList)),
            newsBuilder(newsList),
          ],
        ),
        //  bad practice as a scroll view  Never ScrollableScrollPhysics USE THIS 😡😡😡😡
        //  Column(
        //   children: [
        //     CategoriesListView(categories: categories),
        //     const SizedBox(
        //       height: 30,
        //     ),
        //     Expanded(
        //       child: newsBuilder(newsList),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
