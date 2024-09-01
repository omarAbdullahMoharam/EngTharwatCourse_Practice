import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyNews extends StatelessWidget {
  const EmptyNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Icon(
            Icons.newspaper,
            size: 100,
            color: Colors.orange,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'No News Found',
              style: GoogleFonts.kronaOne(
                fontSize: 20,
                color: Colors.orangeAccent.shade700,
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
