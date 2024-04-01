import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'loginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: const Center(child: Text('Login Screen')),
    );
  }
}
