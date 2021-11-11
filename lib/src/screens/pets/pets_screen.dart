import 'package:flutter/material.dart';
import 'package:watchpets/src/widgets/list_view_pets.dart';

class MyPets extends StatelessWidget {
  /// The MyPets widget is a screen that show all pets of a user
  ///
  /// Allows you to add, remove pets.

  const MyPets({Key? key}) : super(key: key);

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
