import 'package:flutter/material.dart';

class ShowAlert extends StatelessWidget {
  /// The ShowAlert widget show all information about an alert of a pet lost.

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
