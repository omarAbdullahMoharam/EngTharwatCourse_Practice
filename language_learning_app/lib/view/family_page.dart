import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:language_learning_app/components/custom_item_component.dart';
import 'package:language_learning_app/models/family.dart';

// ignore: must_be_immutable
class FamilyMembersPage extends StatelessWidget {
  List<Family> members = const [
    Family(
      JabRole: 'chich',
      EngRole: 'Father',
      image: 'assets/images/family_members/father.png',
      soundPath: 'sounds/family_members/father.wav',
    ),
    Family(
      JabRole: 'Hahaoya',
      EngRole: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
      soundPath: 'sounds/family_members/mother.wav',
    ),
    Family(
      JabRole: 'Musuko',
      EngRole: 'Son',
      image: 'assets/images/family_members/daughter.png',
      soundPath: 'sounds/family_members/son.wav',
    ),
    Family(
      JabRole: 'Musume',
      EngRole: 'Daughter',
      image: 'assets/images/family_members/daughter.png',
      soundPath: 'sounds/family_members/daughter.wav',
    ),
    Family(
      JabRole: 'Nisan',
      EngRole: 'Older Brother',
      image: 'assets/images/family_members/older_brother.png',
      soundPath: 'sounds/family_members/older_bother.wav',
    ),
    Family(
      JabRole: 'Ane',
      EngRole: 'Older Sister',
      image: 'assets/images/family_members/older_sister.png',
      soundPath: 'sounds/family_members/older_sister.wav',
    ),
    Family(
      JabRole: 'Ototo',
      EngRole: 'Younger brother',
      image: 'assets/images/family_members/younger_brother.png',
      soundPath: 'sounds/family_members/younger_brother.wav',
    ),
    Family(
      JabRole: 'Emouto',
      EngRole: 'Younger Sister',
      image: 'assets/images/family_members/younger_sister.png',
      soundPath: 'sounds/family_members/younger_sister.wav',
    ),
    Family(
      JabRole: 'Ojisan',
      EngRole: 'Grand Father',
      image: 'assets/images/family_members/grandfather.png',
      soundPath: 'sounds/family_members/grand_father.wav',
    ),
    Family(
      JabRole: 'Sobo',
      EngRole: 'Grand Mother',
      image: 'assets/images/family_members/grandmother.png',
      soundPath: 'sounds/family_members/grand_mother.wav',
    ),
  ];
  FamilyMembersPage({super.key});

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
            log('_______________________\nSlice number $index \n_______________________');
            return CustomItemComponent.members(
              member: members[index],
              color: const Color(
                0xFF528032,
              ),
            );
          }),
    );
  }
}
