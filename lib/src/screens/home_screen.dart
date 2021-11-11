import 'package:flutter/material.dart';
import 'package:watchpets/src/widgets/list_tile_alert.dart';
import 'package:watchpets/src/widgets/navigator.dart';

class HomeScreen extends StatelessWidget {
  /// The HomeScreen widget show the FullNavigator widget, a FloatingActionButton for send a alert of pet lost.
  ///
  /// And the FullListTile that show all alerts of the pets lost in the app.

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WatchPets'),
        ),
        body: const FullListTile(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/selectpet");
          },
          child: const Icon(Icons.add),
        ),
        drawer: FullNavigator());
  }
}
