import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/players_list/presentation/components/loading_indicator.dart';
import 'package:nba/players_list/presentation/components/player_card.dart';
import '../../domain/cubit/players_list_cubit.dart';
import '../../domain/model/players_list_state.dart';

class PlayersListScreen extends StatefulWidget {
  const PlayersListScreen({super.key});

  @override
  State<PlayersListScreen> createState() => _PlayersListScreenState();
}

class _PlayersListScreenState extends State<PlayersListScreen> {
  final ScrollController controller = ScrollController();
  int page = 2;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.offset > controller.position.maxScrollExtent - 300) {
        context.read<PlayersListCubit>().fetchPlayers(page, 20);
        page++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List listOfPlayers = [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Players'),
        backgroundColor: const Color.fromARGB(255, 14, 94, 104),
      ),
      body: BlocBuilder<PlayersListCubit, PlayersListState>(
        builder: (context, state) {
          if (state.field?.hasData == true) {
            final data = state.field!.data!;
            for (int i = 0; i < data.length; i++) {
              listOfPlayers.add(data.elementAt(i));
            }
            return ListView.builder(
              controller: controller,
              itemCount: listOfPlayers.length + 1,
              itemBuilder: ((context, index) {
                if (index < listOfPlayers.length) {
                  return PlayerCard(
                    listOfPlayers.elementAt(index),
                  );
                } else {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 23),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              }),
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
