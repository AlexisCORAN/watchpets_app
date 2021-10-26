import 'package:flutter/material.dart';
import 'package:watchpets/src/widgets/list_view_pets.dart';

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
      ),
      body: Container(color: Colors.blueGrey[900], child: const FullListView()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/addpets");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
