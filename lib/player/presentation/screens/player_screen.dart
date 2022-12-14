import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/di/service_locator.dart';
import 'package:nba/player/domain/cubit/person_cubit.dart';
import 'package:nba/player/domain/model/player_state.dart';
import 'package:nba/player/domain/repository/player_repository.dart';
import 'package:nba/player/presentation/components/player_container.dart';
import 'package:nba/players_list/presentation/components/loading_indicator.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen(this.id, {super.key});
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PlayerCubit(
        getIt<PlayerRepository>(),
      )..fetchPerson(id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail Info'),
          backgroundColor: const Color.fromARGB(255, 14, 94, 104),
        ),
        body: BlocBuilder<PlayerCubit, PlayerState>(
          builder: (context, state) {
            if (state.field?.hasData == true) {
              final data = state.field!.data!;
              return PlayerContainer(data: data);
            }
            if (state.field?.error != null) {
              return Center(
                child: Text(state.field!.error!.toString()),
              );
            }
            if (state.field?.connectionState == ConnectionState.waiting) {
              return const LoadingIndicator();
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
