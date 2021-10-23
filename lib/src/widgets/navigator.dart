import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:watchpets/src/screens/login_screen.dart';
import 'package:watchpets/src/screens/pets_screen.dart';
import 'package:watchpets/src/screens/profile_screen.dart';

class FullNavigator extends StatefulWidget {
  const FullNavigator({Key? key}) : super(key: key);

  @override
  _FullNavigatorState createState() => _FullNavigatorState();
}

class _FullNavigatorState extends State<FullNavigator> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red[700],
            ),
            accountName: const Text('Tyrone Backyardigans'),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.yellow[400],
              child: const Text("TB"),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              final route = MaterialPageRoute(
                builder: (BuildContext context) {
                  return const ProfileScreen();
                },
              );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.pets),
            title: const Text('My Pets'),
            onTap: () {
              final route = MaterialPageRoute(
                  builder: (BuildContext context) => const MyPet());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log out'),
            onTap: () {
              final route = MaterialPageRoute(
                  builder: (BuildContext context) => const LoginScreen());
              Navigator.of(context).pushAndRemoveUntil(route, (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
