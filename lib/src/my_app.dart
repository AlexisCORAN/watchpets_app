import 'package:flutter/material.dart';
import 'package:watchpets/src/screens/login_screen.dart';
import 'package:watchpets/src/screens/start_screen.dart';

import 'screens/home_screen.dart';
import 'screens/pets_screen.dart';
import 'screens/profile_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WatchPets',
        initialRoute: '/login',
        routes: {
          '/login': (BuildContext context) => const LoginScreen(),
          '/home': (BuildContext context) => const HomeScreen(),
          '/profile': (BuildContext context) => const ProfileScreen(),
          '/pets': (BuildContext context) => const MyPet(),
        });
  }
}

// home: AuthService().handleAuthState()
