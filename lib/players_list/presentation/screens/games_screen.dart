import 'package:flutter/material.dart';
import 'package:nba/player/presentation/themes/app_colors.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Games'),
        backgroundColor: AppColors.mainColor,
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
