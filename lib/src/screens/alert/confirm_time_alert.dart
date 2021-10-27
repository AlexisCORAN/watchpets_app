import 'package:flutter/material.dart';

class ConfirmTimeAlert extends StatefulWidget {
  const ConfirmTimeAlert({Key? key}) : super(key: key);

  @override
  _ConfirmTimeAlertState createState() => _ConfirmTimeAlertState();
}

class _ConfirmTimeAlertState extends State<ConfirmTimeAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Confirm Time'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/summaryalert");
          },
          child: const Icon(Icons.arrow_forward),
          backgroundColor: const Color(0xff4cc443),
        ));
  }
}
