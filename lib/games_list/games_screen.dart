import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('games list'),
          backgroundColor: const Color.fromARGB(255, 14, 94, 104),
        ),
        body: const Center(
            child: Text(
          'games list screen',
          style: TextStyle(fontSize: 30),
        )));
  }
}
