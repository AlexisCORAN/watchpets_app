import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class LoginController with ChangeNotifier {
  bool _checkingLogin = false;
  AccessToken? _accessToken;

  Future<void> login() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
        _accessToken = result.accessToken;

        print("facebook login OK");
        notifyListeners();
      } else if (result.status == LoginStatus.cancelled) {
        print("facebook login cancelled");
      } else if (result.status == LoginStatus.failed) {
        print("facebook login failed");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> logout() async {
    await FacebookAuth.instance.logOut();
    _checkingLogin = false;
    notifyListeners();
  }
}
