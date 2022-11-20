import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/di/service_locator.dart';
import 'package:nba/players_list/domain/cubit/players_cubit.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';
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
        //todo не делать глобальным
        BlocProvider(
          create: (_) => PlayersCubit(
            getIt<PlayersListRepository>(),
          )..fetchPlayers(),
        ),
        // ChangeNotifierProvider.value(
        //   value: RequestPlayers(),
        // ),
      ],
      child: MaterialApp(
        title: 'MyApp',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: StartScreen(),
      ),
    );
  }
}
