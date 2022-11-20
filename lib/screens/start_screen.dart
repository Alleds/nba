import 'package:flutter/material.dart';
import 'package:nba/widgets/player_card.dart';
import 'package:provider/provider.dart';

import '../providers/request.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  //todo remove
  var _isInit = true;

  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<RequestPlayers>(context).request().then((_) {});
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    //todo не пуш принты в мастер
    print('object');
    //context.read<RequestPlayers>()
    final playersData = Provider.of<RequestPlayers>(context);
    final List<Player> players = playersData.players;
    return Scaffold(
      appBar: AppBar(
        title: Text('NBA Players'),
        backgroundColor: Color.fromARGB(255, 14, 94, 104),
      ),
      body: Center(
          child: ListView.builder(
              //players.elementAt(index)
              itemBuilder: ((ctx, index) => PlayerCard(players[index])),
              itemCount: players.length)),
    );
  }
}
