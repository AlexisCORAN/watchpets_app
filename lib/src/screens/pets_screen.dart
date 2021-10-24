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
        backgroundColor: Colors.red[700],
      ),
      body: const FullListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.red[300],
      ),
    );
  }
}
