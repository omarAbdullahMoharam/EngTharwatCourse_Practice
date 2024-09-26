import 'package:flutter/material.dart';

import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String homeID = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return const ProductCard();
          },
        ),
      ),
    );
  }
}
