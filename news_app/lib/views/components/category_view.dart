import 'package:flutter/material.dart';
import 'package:news_app/views/components/news_listView_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryContent});

  final String categoryContent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: categoryContent),
          ],
        ),
      ),
    );
  }
}
