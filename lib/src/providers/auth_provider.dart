import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthController with ChangeNotifier {
  /// The class AuthController validates the login with facebook and validates the auth Firebase,
  ///
  /// Also, the logout with facebook and Auth Firebase.

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  AuthController(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  User? get currentUser => _firebaseAuth.currentUser;

  Future<UserCredential?> login() async {
    final LoginResult? result = await FacebookAuth.instance.login();
    UserCredential success;

    if (result!.status == LoginStatus.success) {
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.token);
      success = await _firebaseAuth.signInWithCredential(credential);
      notifyListeners();
      return success;
    }
    notifyListeners();
    return null;
  }

  Future<void> logout() async {
    FacebookAuth.instance.logOut();
    await _firebaseAuth.signOut();
    notifyListeners();
  }
}
