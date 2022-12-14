import 'package:flutter/material.dart';
import 'package:nba/player/presentation/screens/player_screen.dart';
import '../../data/model/players_list_dto.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard(this.player, {super.key});

  final PlayersListDto player;

  @override
  Widget build(BuildContext context) {
    final playerId = player.id;
    return AspectRatio(
      aspectRatio: 10 / 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GestureDetector(
          onTap: () => playerId == null
              ? null
              : Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PlayerScreen(playerId),
                  ),
                ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 14, 94, 104),
                  Color.fromARGB(255, 0, 0, 0),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.25, 0.90],
              ),
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(20),
            child: Text(
              '${player.firstName} ${player.secondName}',
              style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
