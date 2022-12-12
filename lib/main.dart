import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/di/service_locator.dart';
import 'package:nba/players_list/domain/cubit/players_cubit.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';
import 'package:nba/players_list/presentation/screens/start_screen.dart';
import 'package:provider/provider.dart';
import './di/injectable.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  configureDependencies();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (_) => PlayersCubit(
            getIt<PlayersListRepository>(),
          )..fetchPlayers(),
        ),
      ],
      child: MaterialApp(
        title: 'NBA app',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const StartScreen(),
      ),
    );
  }
}
