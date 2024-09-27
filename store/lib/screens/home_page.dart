import 'dart:math';

import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/get_all_products.dart';

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
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                  child: CircularProgressIndicator(
                color: Colors.amber[900],
              ));
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}❗😡'),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const NoProducts();
            } else {
              log(snapshot.data!.length);
              return GridView.builder(
                itemCount: snapshot.data!.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75555,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: snapshot.data![index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class NoProducts extends StatelessWidget {
  static String noProductID = 'NoProducts';
  const NoProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.delete,
              size: 70,
              color: Colors.grey[700],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'No products found 😞\n come back soon🔻',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
