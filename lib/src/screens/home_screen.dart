import 'package:flutter/material.dart';
import 'package:watchpets/src/widgets/navigator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: const Text('WatchPets'),
        ),
        body: const Center(child: Text('Home')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: Colors.red[300],
        ),
        drawer: const FullNavigator());
  }
}
