import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class ProductCard extends StatefulWidget {
  ProductCard({
    required this.product,
    super.key,
  });
  ProductModel product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // height: 280,
          // width: 250,
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
                        onPressed: () {
                          setState(() {
                            isFav = !isFav;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: isFav ? Colors.red : Colors.grey,
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
          // top: 20,
          bottom: 100,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Image.network(
              fit: BoxFit.cover,
              'https://m.media-amazon.com/images/I/61AXuC9Ac5L.__AC_SX300_SY300_QL70_ML2_.jpg',
              // width: 200,
              // height: 170,
            ),
          ),
        ),
      ],
    );
  }
}
