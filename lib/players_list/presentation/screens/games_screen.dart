import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:nba/player/presentation/components/app_colors.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Games'),
        backgroundColor: const Color.fromARGB(255, 14, 94, 104),
      ),
      body: const Center(
        child: Text(
          'Games Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
