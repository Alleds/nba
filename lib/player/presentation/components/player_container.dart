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
      color: Colors.black,
      fontWeight: FontWeight.w400,
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
                  Color.fromARGB(255, 236, 243, 244),
                  Color.fromARGB(255, 2, 78, 72),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0, 0.95],
              ),
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    '${data.firstName} ${data.lastName}',
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(color: Colors.black87),
                ),
                Text(
                  'Team: ${data.team!['full_name']}',
                  style: textStyle,
                ),
                Text(
                  'Height Feet: ${data.heightFeet}',
                  style: textStyle,
                ),
                Text(
                  'Height Inches: ${data.heightInches}',
                  style: textStyle,
                ),
                Text(
                  'Weight: ${data.weightPounds} pound',
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
