import 'package:flutter/material.dart';
import 'package:nba/player/data/model/player_dto.dart';

class PlayerContainer extends StatelessWidget {
  const PlayerContainer({
    Key? key,
    required this.data,
  }) : super(key: key);

  final PlayerDto data;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.w200,
    );
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${data.firstName}',
                  style: textStyle,
                ),
                Text(
                  'Second name: ${data.lastName}',
                  style: textStyle,
                ),
                Text(
                  'Position: ${data.position}',
                  style: textStyle,
                ),
                Text(
                  'Team: ${data.team!['full_name']}',
                  style: textStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
