import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/player/presentation/screens/detailed_player_screen.dart';
import 'package:nba/uikit/loading_indicator.dart';
import 'package:nba/players_list/presentation/components/player_card.dart';
import '../../../player/presentation/themes/app_colors.dart';
import '../../domain/cubit/players_list_cubit.dart';
import '../../domain/model/players_list_state.dart';

class PlayersListScreen extends StatelessWidget {
  const PlayersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Players'),
        backgroundColor: AppColors.mainColor,
      ),
      body: BlocBuilder<PlayersListStore, PlayersListState>(
        builder: (context, state) {
          if (state.field?.hasData == true) {
            final data = state.field!.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: ((context, index) {
                final element = data.elementAt(index);
                return PlayerCard(
                  player: element,
                  onTap: () {
                    if (element.id != null) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return DetailedPlayerScreen(element.id!);
                          },
                        ),
                      );
                    }
                  },
                );
              }),
            );
          }
          if (state.field?.error != null) {
            return Center(
              child: Text(
                state.field!.error!.toString(),
              ),
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
