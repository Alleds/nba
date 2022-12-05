import 'package:flutter/material.dart';
import 'package:nba/providers/request.dart';
import 'package:nba/screens/start_screen.dart';
import 'package:provider/provider.dart';
import './di/injectable.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: PlayersProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'MyApp',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const StartScreen(),
      ),
    );
  }
}
