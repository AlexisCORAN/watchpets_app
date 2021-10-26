import 'dart:async';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
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
  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    if (loginResult.status == LoginStatus.success) {
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    }
    return null;
  }

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
                      if (signInWithFacebook() != null) {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil("/home", (route) => false);
                      } else {
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
