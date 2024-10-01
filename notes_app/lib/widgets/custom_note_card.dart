import 'package:flutter/material.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            margin: const EdgeInsets.only(top: 24, bottom: 24),
            color: const Color(0xFFFFCD7A),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  titleAlignment: ListTileTitleAlignment.top,
                  title: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Flutter Tips',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 8),
                    child: Text(
                      'Build your Career with Tharwat Samy',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 22,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 24, right: 23.0, top: 8),
                  child: Text(
                    'May 21,2022',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: 5,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              size: 34,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}