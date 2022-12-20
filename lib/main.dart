import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/di/service_locator.dart';
import 'package:nba/players_list/domain/cubit/players_list_cubit.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';
import 'package:nba/routes/app_router.gr.dart';
import 'package:provider/provider.dart';
import './di/injectable.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
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

  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (_) => PlayersListStore(
            getIt<PlayersListRepository>(),
          )..fetchPlayers(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'NBA app',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
