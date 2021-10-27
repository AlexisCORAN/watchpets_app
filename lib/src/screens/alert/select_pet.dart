import 'package:flutter/material.dart';

class SelectPet extends StatefulWidget {
  const SelectPet({Key? key}) : super(key: key);

  @override
  _SelectPetState createState() => _SelectPetState();
}

class _SelectPetState extends State<SelectPet> {
  bool isCheked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Send Alert')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/location');
        },
        child: const Icon(Icons.arrow_forward),
      ),
      body: const Center(child: Text('Select Pet')),
    );
  }
}
