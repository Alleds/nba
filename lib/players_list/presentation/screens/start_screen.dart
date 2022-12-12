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
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Data is loading'),
                  SizedBox(
                    height: 5,
                  ),
                  CircularProgressIndicator(),
                ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
