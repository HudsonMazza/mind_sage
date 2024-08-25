import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mind_sage/pages/home_page.dart';
import 'package:mind_sage/pages/login_or_register_page.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User is logged in / usuário está logado
          if (snapshot.hasData) {
            return HomePage();
          }
          // User is NOT logged in / usuário não está logado
          else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}