import 'package:flutter/material.dart';
import 'package:watchpets/src/models/pets.dart';

class AddPets extends StatefulWidget {
  const AddPets({Key? key}) : super(key: key);

  @override
  _AddPetsState createState() => _AddPetsState();
}

class _AddPetsState extends State<AddPets> {
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
        itemCount: petList.length,
        itemBuilder: (BuildContext context, int index) {
          return buildPetCard(context, index);
        });
  }

  Widget buildPetCard(BuildContext context, int index) {
    return Card(
        margin: const EdgeInsets.only(
            top: 20.0, bottom: 10.0, left: 30.0, right: 30.0),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pet Name: ${petList[index].petName}"),
                          Text("Pet Type: ${petList[index].petType}"),
                          Text("Pet Type: ${petList[index].petBreed}"),
                          Text("Pet Age: ${petList[index].petAge.toString()}")
                        ]),
                    ButtonBar(
                      buttonPadding: EdgeInsets.zero,
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(onPressed: () {}, child: const Text('Edit')),
                        TextButton(
                            onPressed: () {}, child: const Text('Delete')),
                      ],
                    )
                  ],
                )),
                Expanded(
                    child: Image.network(
                        'https://thumbs.dreamstime.com/b/pets-standing-front-white-background-11785222.jpg')),
              ],
            )));
  }
}
