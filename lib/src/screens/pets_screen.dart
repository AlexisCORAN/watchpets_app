import 'package:flutter/material.dart';
import 'package:watchpets/src/widgets/add_pets.dart';

class MyPet extends StatefulWidget {
  const MyPet({Key? key}) : super(key: key);
  @override
  _MyPetState createState() => _MyPetState();
}

class _MyPetState extends State<MyPet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pets'),
        backgroundColor: Colors.red[700],
      ),
      body: const AddPets(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.red[300],
      ),
    );
  }
}
