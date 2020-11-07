import 'package:crew_brew_app/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    AuthService _auth = AuthService();

    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text("Sign In in Brew Crew"),
        backgroundColor: Colors.brown[800],
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 50.0,
        ),
        child: RaisedButton(
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print("Error");
            } else {
              print("Sign in Successfully");
              print(result);
            }
          },
          textColor: Colors.black,
          child: Text("Sign In"),
        ),
      ),
    );
  }
}
