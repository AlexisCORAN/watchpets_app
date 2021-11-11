import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:watchpets/src/providers/auth_provider.dart';

class FullNavigator extends StatefulWidget {
  /// The FullNavigator widget provides a collection of widgets that
  /// us to go to the application screens.
  /// And show information about the user.
  const FullNavigator({Key? key}) : super(key: key);

  @override
  _FullNavigatorState createState() => _FullNavigatorState();
}

class _FullNavigatorState extends State<FullNavigator> {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.read<AuthController>();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
            accountName: Text('${firebaseUser.currentUser!.displayName}'),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage('${firebaseUser.currentUser!.photoURL}'),
              backgroundColor: Colors.transparent,
              radius: 30.0,
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
            onTap: () async {
              await firebaseUser.logout().whenComplete(() {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/login", (route) => false);
              });
            },
          ),
        ],
      ),
    );
  }
}
