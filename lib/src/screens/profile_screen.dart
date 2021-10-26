import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(16.0),
                  child: const CircleAvatar()),
              const Text("First Name"),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
