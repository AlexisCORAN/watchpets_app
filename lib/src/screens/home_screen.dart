import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:watchpets/src/providers/auth_provider.dart';
import 'package:watchpets/src/widgets/listt_tile_alert.dart';
import 'package:watchpets/src/widgets/navigator.dart';

class HomeScreen extends StatelessWidget {
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
