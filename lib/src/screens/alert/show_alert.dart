import 'package:flutter/material.dart';

class ShowAlert extends StatelessWidget {
  const ShowAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Alert"),
      ),
      body: const Center(
        child: Text("Show Alert"),
      ),
    );
  }
}
