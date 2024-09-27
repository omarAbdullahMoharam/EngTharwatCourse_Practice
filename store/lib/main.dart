import 'package:flutter/material.dart';
import 'package:store/screens/home_page.dart';

import 'widgets/no_products.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.homeID: (context) => const HomePage(),
        NoProducts.noProductID: (context) => const NoProducts()
      },
      initialRoute: HomePage.homeID,
    );
    //
  }
}
