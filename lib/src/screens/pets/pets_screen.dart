import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watchpets/src/providers/auth_provider.dart';
import 'package:watchpets/src/providers/pet_provider.dart';
import 'package:watchpets/src/widgets/list_view_pets.dart';

class MyPets extends StatefulWidget {
  const MyPets({
    Key? key,
  }) : super(key: key);
  @override
  _MyPetsState createState() => _MyPetsState();
}

class _MyPetsState extends State<MyPets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pets'),
      ),
      body: const FullListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addpets');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
