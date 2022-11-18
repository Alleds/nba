// import 'package:flutter/material.dart';
// import 'package:nba/providers/request.dart';
// import 'package:provider/provider.dart';

// class GameCard extends StatelessWidget {
//   Game game;
//   GameCard(this.game);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.symmetric(vertical: 8),
//           width: 250,
//           height: 50,
//           decoration: BoxDecoration(
//               border: Border.all(), borderRadius: BorderRadius.circular(8)),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 '${game.team1} ${game.score1}',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//         Text(
//           '${game.team2} ${game.score2}',
//           textAlign: TextAlign.center,
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }
