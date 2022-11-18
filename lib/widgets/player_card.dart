import 'package:flutter/material.dart';
import 'package:nba/providers/request.dart';
import 'package:provider/provider.dart';

class PlayerCard extends StatelessWidget {
  Player player;
  PlayerCard(this.player);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: new LinearGradient(
          colors: [
            Color.fromARGB(255, 14, 94, 104),
            Color.fromARGB(255, 0, 0, 0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.25, 0.90],
        ),
      ),
      alignment: Alignment.centerLeft, //to align its child
      padding: EdgeInsets.all(20),
      child: Text(
        '${player.first_name} ${player.last_name}',
        style: TextStyle(
          fontSize: 35,
          color: Colors.white,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}