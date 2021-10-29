import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:watchpets/src/providers/auth_provider.dart';
import 'package:watchpets/src/screens/home_screen.dart';
import 'package:watchpets/src/screens/login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firebaseUser = context.watch<AuthController>().currentUser;

    if (firebaseUser == null) {
      return const LoginScreen();
    } else {
      return const HomeScreen();
    }
  }
}

/**
  return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomeScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
 */