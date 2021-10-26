import 'package:flutter/material.dart';

class IconLogo extends StatelessWidget {
  const IconLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 130,
        height: 180,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/ubicacion.png'),
          fit: BoxFit.cover,
        )));
  }
}
