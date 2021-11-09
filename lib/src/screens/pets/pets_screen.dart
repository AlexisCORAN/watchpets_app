import 'package:flutter/material.dart';
import 'package:watchpets/src/widgets/list_view_pets.dart';

class MyPets extends StatelessWidget {
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
