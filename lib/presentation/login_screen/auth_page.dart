import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:mohammed_s_application1/presentation/login_screen/login_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //If User Logged In
          if (snapshot.hasData) {
            print(
                "snap has data////////////////////////////////////////////////////////////////////");
            return HomeContainerScreen();
          }
          //If User Not Logged In
          else {
            print(
                "snap has No data//////////////////////////////////////////////////////////////////");
            return LoginScreen();
          }
        },
      ),
    );
  }
}
