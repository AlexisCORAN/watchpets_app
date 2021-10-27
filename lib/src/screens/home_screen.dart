import 'package:flutter/material.dart';
import 'package:watchpets/src/widgets/navigator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WatchPets'),
        ),
        body: Container(
            color: Colors.blueGrey[900],
            child: const Center(child: Text('Home'))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/selectpet");
          },
          child: const Icon(Icons.add),
        ),
        drawer: const FullNavigator());
  }
}
