import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/players_list/presentation/components/loading_indicator.dart';
import 'package:nba/players_list/presentation/components/player_card.dart';
import '../../domain/cubit/players_list_cubit.dart';
import '../../domain/model/players_list_state.dart';

class PlayersListScreen extends StatelessWidget {
  const PlayersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Players'),
        backgroundColor: const Color.fromARGB(255, 14, 94, 104),
      ),
      body: BlocBuilder<PlayersListCubit, PlayersListState>(
        builder: (context, state) {
          if (state.field?.hasData == true) {
            final data = state.field!.data!;
            return ListView.builder(
              itemBuilder: ((context, index) {
                return PlayerCard(
                  data.elementAt(index),
                );
              }),
              itemCount: data.length,
            );
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
    );
  }
}
