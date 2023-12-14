import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_login/services/auth_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: authService.handleSignOut,
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
          child: Text(FirebaseAuth.instance.currentUser!.email.toString())),
    );
  }
}
