import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/di/service_locator.dart';
import 'package:nba/player/domain/cubit/detailed_player_cubit.dart';
import 'package:nba/player/domain/model/detailed_player_state.dart';
import 'package:nba/player/domain/repository/detailed_player_repository.dart';
import 'package:nba/player/presentation/components/app_colors.dart';
import 'package:nba/player/presentation/components/detailed_player_card.dart';
import 'package:nba/players_list/presentation/components/loading_indicator.dart';

class DetailedPlayerScreen extends StatelessWidget {
  const DetailedPlayerScreen(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailedPlayerCubit(
        getIt<DetailedPlayerRepository>(),
      )..fetchPerson(id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail Info'),
          backgroundColor: AppColors.mainColor,
        ),
        body: BlocBuilder<DetailedPlayerCubit, DetailedPlayerState>(
          builder: (context, state) {
            if (state.field?.hasData == true) {
              final data = state.field!.data!;
              return DetailedPlayerCard(data: data);
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
