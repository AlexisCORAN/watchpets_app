import 'package:flutter/material.dart';
import 'package:watchpets/src/screens/login_screen.dart';

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
            decoration: const BoxDecoration(
              color: Colors.green,
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
            title: const Text("Profile"),
            onTap: () {
              Navigator.pushNamed(context, "/profile");
            },
          ),
          ListTile(
            leading: const Icon(Icons.pets),
            title: const Text("My Pets"),
            onTap: () {
              Navigator.pushNamed(context, "/pets");
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log out'),
            onTap: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("/", (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
