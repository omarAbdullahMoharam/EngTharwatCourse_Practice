import 'package:flutter/material.dart';

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
