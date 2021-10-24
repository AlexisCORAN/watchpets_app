import 'package:flutter/material.dart';
import 'package:watchpets/src/screens/login_screen.dart';
import 'package:watchpets/src/screens/start_screen.dart';

import 'screens/home_screen.dart';
import 'screens/pets/pets_screen.dart';
import 'screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WatchPets',
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => const LoginScreen(),
          '/home': (BuildContext context) => const HomeScreen(),
          '/profile': (BuildContext context) => const ProfileScreen(),
          '/pets': (BuildContext context) => const MyPet(),
        });
  }
}
