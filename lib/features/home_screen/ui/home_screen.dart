import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const homeScreen = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
