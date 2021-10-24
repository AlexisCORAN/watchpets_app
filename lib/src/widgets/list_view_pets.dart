import 'package:flutter/material.dart';
import 'package:watchpets/src/models/pets.dart';

import 'build_pet_widgets.dart';

class FullListView extends StatefulWidget {
  const FullListView({Key? key}) : super(key: key);

  @override
  _FullListViewState createState() => _FullListViewState();
}

class _FullListViewState extends State<FullListView> {
  final List<Pet> petList = [
    Pet("Boby", "Cat", "Persian Cat", 9),
    Pet("Mayo", "Dog", "Persian Cat", 2),
    Pet("Captain", "Bird", "Persian Cat", 6),
    Pet("Rockstar", "Rabbits", "Persian Cat", 5),
    Pet("Meteoro", "Fish", "Persian Cat", 3)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
        itemCount: petList.length,
        itemBuilder: (BuildContext context, int index) {
          return buildPetCard(
              context,
              index,
              petList[index].petName,
              petList[index].petType,
              petList[index].petBreed,
              petList[index].petAge.toString());
        });
  }
}
