import 'package:flutter/material.dart';

class SuccessAlert extends StatelessWidget {

  /// The SuccessAlert widget is a final step of an alert.
  /// 
  /// This widget is the confirmation about the correct sending of an alert.

  const SuccessAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Thank you alert was sent succesfully'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  child: const Text('Home')),
            )
          ],
        ),
      ),
    );
  }
}
