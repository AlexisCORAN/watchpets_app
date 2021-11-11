import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'my_app.dart';

/// The main function is the entry point of the application,
/// and initialize firebase

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
