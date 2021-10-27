import 'package:flutter/material.dart';

class SummaryAlert extends StatefulWidget {
  const SummaryAlert({Key? key}) : super(key: key);

  @override
  _SummaryAlertState createState() => _SummaryAlertState();
}

class _SummaryAlertState extends State<SummaryAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Summary')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/successalert', (route) => false);
        },
      ),
      body: const Center(
        child: Text('Summary'),
      ),
    );
  }
}
