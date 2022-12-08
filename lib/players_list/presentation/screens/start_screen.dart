import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/players_list/presentation/components/player_card.dart';
import '../../domain/cubit/players_cubit.dart';
import '../../domain/model/player_state.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Players'),
        backgroundColor: const Color.fromARGB(255, 14, 94, 104),
      ),
      body: BlocBuilder<PlayersCubit, PlayerState>(
        builder: (context, state) {
          if (state.field?.hasData == true) {
            return Center(
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return PlayerCard(
                    state.field!.data!.elementAt(index),
                  );
                }),
                itemCount: state.field?.data?.length,
              ),
            );
          }
          if (state.field!.hasError == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.field!.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
