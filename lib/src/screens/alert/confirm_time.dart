import 'package:flutter/material.dart';

class ConfirmTime extends StatefulWidget {
  const ConfirmTime({Key? key}) : super(key: key);

  @override
  _ConfirmTimeState createState() => _ConfirmTimeState();
}

class _ConfirmTimeState extends State<ConfirmTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Location Services'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_forward),
          backgroundColor: const Color(0xff4cc443),
        ));
  }
}
