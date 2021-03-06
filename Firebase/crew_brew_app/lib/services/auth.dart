import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future signInAnon() async {
    try {
      final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
      UserCredential result = await _firebaseAuth.signInAnonymously();
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
