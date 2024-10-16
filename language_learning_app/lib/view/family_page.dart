import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:language_learning_app/components/custom_item_component.dart';
import 'package:language_learning_app/models/item_model.dart';

// ignore: must_be_immutable
class FamilyMembersPage extends StatelessWidget {
  List<ItemModel> members = const [
    ItemModel(
      image: 'assets/images/family_members/father.png',
      jabTitle: 'chich',
      engTitle: 'Father',
      soundPath: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      jabTitle: 'Hahaoya',
      engTitle: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
      soundPath: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      jabTitle: 'Musuko',
      engTitle: 'Son',
      image: 'assets/images/family_members/daughter.png',
      soundPath: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      jabTitle: 'Musume',
      engTitle: 'Daughter',
      image: 'assets/images/family_members/daughter.png',
      soundPath: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      jabTitle: 'Nisan',
      engTitle: 'Older Brother',
      image: 'assets/images/family_members/older_brother.png',
      soundPath: 'sounds/family_members/older_bother.wav',
    ),
    ItemModel(
      jabTitle: 'Ane',
      engTitle: 'Older Sister',
      image: 'assets/images/family_members/older_sister.png',
      soundPath: 'sounds/family_members/older_sister.wav',
    ),
    ItemModel(
      jabTitle: 'Ototo',
      engTitle: 'Younger brother',
      image: 'assets/images/family_members/younger_brother.png',
      soundPath: 'sounds/family_members/younger_brother.wav',
    ),
    ItemModel(
      jabTitle: 'Emouto',
      engTitle: 'Younger Sister',
      image: 'assets/images/family_members/younger_sister.png',
      soundPath: 'sounds/family_members/younger_sister.wav',
    ),
    ItemModel(
      jabTitle: 'Ojisan',
      engTitle: 'Grand Father',
      image: 'assets/images/family_members/grandfather.png',
      soundPath: 'sounds/family_members/grand_father.wav',
    ),
    ItemModel(
      jabTitle: 'Sobo',
      engTitle: 'Grand Mother',
      image: 'assets/images/family_members/grandmother.png',
      soundPath: 'sounds/family_members/grand_mother.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF452E27),
      ),
      body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            log('\nSlice number $index _______________________');
            return CustomItemComponent(
              members[index],
              const Color(
                0xFF528032,
              ),
            );
          }),
    );
  }
}
