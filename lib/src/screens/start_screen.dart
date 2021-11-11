import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:watchpets/src/providers/auth_provider.dart';
import 'package:watchpets/src/screens/home_screen.dart';
import 'package:watchpets/src/screens/login_screen.dart';

class StartScreen extends StatelessWidget {
  /// The StartScreen widget validates if the user is authenticated with firebase Auth
  /// and redirect the user to HomeScreen widget if not it returns to LoginSceen widget.

  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firebaseUser = context.watch<AuthController>().currentUser;

    if (firebaseUser != null) {
      return const HomeScreen();
    } else {
      return const LoginScreen();
    }
  }
}
