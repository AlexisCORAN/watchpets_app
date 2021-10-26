import 'dart:async';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:watchpets/src/models/login_controler.dart';
import 'package:watchpets/src/widgets/icon.dart';
import 'package:watchpets/src/widgets/logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

String prettyPrint(Map json) {
  JsonEncoder encoder = const JsonEncoder.withIndent('  ');
  String pretty = encoder.convert(json);
  return pretty;
}

class _LoginScreenState extends State<LoginScreen> {
  Map<String, dynamic>? _userData;
  AccessToken? _accessToken;
  bool _checking = true;

  @override
  void initState() {
    super.initState();
    _checkIfIsLogged();
  }

  Future<void> _checkIfIsLogged() async {
    final AccessToken? accessToken = await FacebookAuth.instance.accessToken;
    setState(() {
      _checking = false;
    });
    if (accessToken != null) {
      print("is Logged:::: ${prettyPrint(accessToken.toJson())}");
      final userData = await FacebookAuth.instance.getUserData();
      print(userData);
      String nameAccount = userData['name'];
      print(nameAccount);
      _accessToken = accessToken;
      setState(() {
        _userData = userData;
      });
    }
  }

  void _printCredentials() {
    print(
      prettyPrint(_accessToken!.toJson()),
    );
  }

  Future<void> _login() async {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      _accessToken = result.accessToken;
      _printCredentials();
      final userData = await FacebookAuth.instance.getUserData();
      _userData = userData;
    }

    setState(() {
      _checking = false;
    });
  }

  Future<void> _logOut() async {
    await FacebookAuth.instance.logOut();
    _accessToken = null;
    _userData = null;
    setState(() {});
  }

/** 
  loginPage() {
    return Consumer<LoginController>(builder: (context, model, child) {
      if (model.userData != null) {

        return Center(
          alreadyLoggedInScreen(model);
        );
      } else {
        return notLoggedInScreen(model);
      }

    });
  }

  alreadyLoggedInScreen(LoginController model) {

  }
  */

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double greenSize = size.width * 0.80;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.blueGrey[900],
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                left: greenSize * 0.12,
                right: greenSize * 0.12,
                top: greenSize * 0.1,
                child: const Logo(),
              ),
              Positioned(
                left: greenSize * 0.40,
                right: greenSize * 0.40,
                top: greenSize * 0.78,
                child: const IconLogo(),
              ),
              Positioned(
                  left: greenSize * 0.30,
                  right: greenSize * 0.30,
                  top: greenSize * 1.6,
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      if (_userData != null) {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil("/home", (route) => false);
                      } else {
                        _login();
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil("/home", (route) => false);
                      }
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
