import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:watchpets/src/providers/position_controller.dart';
import 'package:watchpets/src/providers/auth_provider.dart';
import 'package:watchpets/src/screens/alert/confirm_time_alert.dart';
import 'package:watchpets/src/screens/alert/alert_location.dart';
import 'package:watchpets/src/screens/alert/select_pet.dart';
import 'package:watchpets/src/screens/alert/show_alert.dart';
import 'package:watchpets/src/screens/alert/succes_alert.dart';
import 'package:watchpets/src/screens/alert/summary_alert.dart';
import 'package:watchpets/src/screens/login_screen.dart';
import 'package:watchpets/src/screens/pets/add_pet.dart';
import 'package:watchpets/src/screens/start_screen.dart';
import 'src/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'src/screens/pets/pets_screen.dart';
import 'src/screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  /// The widget MyApp is the is the root widget of the application provides the application paths
  ///
  /// PositionController - is an instance of the user's position.
  ///
  /// AuthController - is a instance of the user's authentication.

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PositionController()),
        ChangeNotifierProvider<AuthController>(
            create: (_) => AuthController(FirebaseAuth.instance)),
        StreamProvider(
            catchError: (_, err) {
              return null;
            },
            create: (context) =>
                context.read<AuthController>().authStateChanges,
            initialData: null)
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
            "/": (BuildContext context) => const StartScreen(),
            '/login': (BuildContext context) => const LoginScreen(),
            "/home": (BuildContext context) => const HomeScreen(),
            "/profile": (BuildContext context) => const ProfileScreen(),
            "/pets": (BuildContext context) => const MyPets(),
            "/addpets": (BuildContext context) => const AddPet(),
            "/selectpet": (BuildContext context) => const SelectPet(),
            "/locationuser": (BuildContext context) => const LocationUser(),
            "/timealert": (BuildContext context) => const ConfirmTimeAlert(),
            "/summaryalert": (BuildContext context) => const SummaryAlert(),
            "/successalert": (BuildContext context) => const SuccessAlert(),
            '/showalert': (BuildContext context) => const ShowAlert(),
          }),
    );
  }
}
