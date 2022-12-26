import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/di/service_locator.dart';
import 'package:nba/players_list/domain/cubit/players_list_cubit.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';
import 'package:nba/players_list/presentation/screens/root_screen.dart';
import './di/injectable.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PlayersListStore(
            getIt<PlayersListRepository>(),
          )..fetchPlayers(),
        ),
      ],
      child: MaterialApp(
        title: 'NBA app',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const RootScreen(),
      ),
    );
  }
}
