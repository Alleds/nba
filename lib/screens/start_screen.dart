import 'package:flutter/material.dart';
import 'package:nba/widgets/player_card.dart';
import 'package:provider/provider.dart';
import '../providers/request.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<RequestPlayers>(context).request();
    final List<Player> players = Provider.of<RequestPlayers>(context).players;
    return Scaffold(
      appBar: AppBar(
        title: Text('NBA Players'),
        backgroundColor: Color.fromARGB(255, 14, 94, 104),
      ),
      body: Center(
          child: ListView.builder(
              itemBuilder: ((context, index) => PlayerCard(players[index])),
              itemCount: players.length)),
    );
  }
}
