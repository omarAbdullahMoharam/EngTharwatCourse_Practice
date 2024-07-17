import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_info.dart';
import 'package:language_learning_app/models/item_model.dart';

// ignore: must_be_immutable
class CustomItemComponent extends StatelessWidget {
  CustomItemComponent(this.itemModel, this.color);
  final ItemModel itemModel;
  final player = AudioPlayer();
  final Color color;

  // String JabTitle;
  // String english;
  // String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 95,
          color: const Color(0xFFFFF3DF),
          child: Image.asset(itemModel.image!),
        ),
        Container(
          color: color,
          child: ItemInfo(
            itemModel: itemModel,
            color: color,
          ),
        ),
      ],
    );
  }
}
