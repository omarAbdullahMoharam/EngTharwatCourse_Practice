import 'package:flutter/material.dart';

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
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 280,
              width: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(10, 10),
                  ),
                ],
              ),
              child: Card(
                color: Colors.white,
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      title: const Text(
                        'imageTitle',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            r'$222',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 5,
              left: 5,
              top: 20,
              bottom: 100,
              child: Image.network(
                fit: BoxFit.cover,
                'https://m.media-amazon.com/images/I/61AXuC9Ac5L.__AC_SX300_SY300_QL70_ML2_.jpg',
                width: 200,
                height: 170,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
