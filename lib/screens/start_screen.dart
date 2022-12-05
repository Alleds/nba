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
  var _isInit = true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      context.watch<PlayersProvider>().request().then((_) {});
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final playersData = context.read<PlayersProvider>();
    final List<Player> players = playersData.players;
    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Players'),
        backgroundColor: const Color.fromARGB(255, 14, 94, 104),
      ),
      body: Center(
          child: ListView.builder(
              itemBuilder: ((ctx, index) =>
                  PlayerCard(players.elementAt(index))),
              itemCount: players.length)),
    );
  }
}
