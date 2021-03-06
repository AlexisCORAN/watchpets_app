import 'package:flutter/material.dart';
import 'package:watchpets/src/models/pets.dart';

import 'pet_widgets.dart';

class FullListView extends StatefulWidget {
  /// The FullListView widget provides a collection of widgets
  /// that show a characteristics
  /// about a pet.
  const FullListView({Key? key}) : super(key: key);

  @override
  _FullListViewState createState() => _FullListViewState();
}

class _FullListViewState extends State<FullListView> {
  final List<Pet> petList = [
    Pet(petName: "Boby", petType: "Cat", petBreed: "Persian Cat", petAge: 9),
    Pet(petName: "Mayo", petType: "Dog", petBreed: "Persian Cat", petAge: 2),
    Pet(
        petName: "Captain",
        petType: "Bird",
        petBreed: "Persian Cat",
        petAge: 6),
    Pet(
        petName: "Rockstar",
        petType: "Cat",
        petBreed: "Persian Cat",
        petAge: 5),
    Pet(petName: "Meteoro", petType: "Cat", petBreed: "Persian Cat", petAge: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
        itemCount: petList.length,
        itemBuilder: (BuildContext context, int index) {
          return PetCardWidget(
              propertyName: petList[index].petName,
              propertyType: petList[index].petType,
              propertyBreed: petList[index].petBreed,
              propertyAge: petList[index].petAge.toString());
        });
  }
}
