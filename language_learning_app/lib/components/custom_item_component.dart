import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/family.dart';
import 'package:language_learning_app/models/number.dart';

// ignore: must_be_immutable
class CustomItemComponent extends StatelessWidget {
  int numWorking = 2, memWorking = 2;
  Color color;
  // CustomItemComponent(
  //     {required this.image, required this.Japanese, required this.english});
  final player = AudioPlayer();
  CustomItemComponent.numbers({
    required this.number,
    required this.color,
    super.key,
  })  : member = null,
        assert(number != null);

  CustomItemComponent.members({
    required this.member,
    required this.color,
    super.key,
  })  : number = null,
        assert(member != null);

  final Number? number;
  final Family? member;

  // String japanese;
  // String english;
  // String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Container(
        padding: const EdgeInsets.only(right: 8.0),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 95,
              color: const Color(0xFFFFF3DF),
              child: Image.asset(number?.image ?? member!.image),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number?.Japanese ?? member!.JabRole,
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Text(
                    number?.English ?? member!.EngRole,
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton.outlined(
              onPressed: () async {
                player
                    .play(AssetSource(number?.soundPath ?? member!.soundPath));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
