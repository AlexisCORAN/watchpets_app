import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  /// The Logo widget provides the name of the application in the widget LoginScreen.
  const Logo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      height: 260,
      child: const Center(
        child: Text("WatchPets",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
    );
  }
}
