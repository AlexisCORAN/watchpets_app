import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:watchpets/src/providers/auth_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.read<AuthController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 100.0),
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage("${firebaseUser.currentUser!.photoURL}"),
                backgroundColor: Colors.transparent,
                radius: 40.0,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              height: 50,
              width: 200,
              child: Text("${firebaseUser.currentUser!.displayName}"),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              height: 50,
              width: 200,
              child: Text("${firebaseUser.currentUser!.email}"),
            ),
          ],
        ),
      ),
    );
  }
}
