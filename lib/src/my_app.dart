import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:watchpets/src/models/login_controler.dart';
import 'package:watchpets/src/screens/login_screen.dart';
import 'package:watchpets/src/screens/pets/add_pet.dart';
import 'screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'screens/pets/pets_screen.dart';
import 'screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginController(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "WatchPets",
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)
                .copyWith(secondary: Colors.teal[300]),
          ),
          initialRoute: "/",
          routes: {
            "/": (BuildContext context) => const LoginScreen(),
            "/home": (BuildContext context) => const HomeScreen(),
            "/profile": (BuildContext context) => const ProfileScreen(),
            "/pets": (BuildContext context) => const MyPet(),
            "/addpets": (BuildContext context) => const AddPet(),
          }),
    );
  }
}
