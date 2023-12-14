import 'package:flutter/material.dart';
import 'package:google_login/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: authService.handleSignIn,
            child: const Text("Sign in with google")),
      ),
    );
  }
}
