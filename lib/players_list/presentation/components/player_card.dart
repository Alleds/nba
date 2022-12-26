import 'package:flutter/material.dart';
import 'package:nba/player/presentation/themes/app_colors.dart';
import '../../../player/presentation/themes/app_textstyles.dart';
import '../../data/model/player_dto.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({
    required this.player,
    required this.onTap,
    super.key,
  });

  final PlayerDto player;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final playerId = player.id;
    return AspectRatio(
      aspectRatio: 10 / 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GestureDetector(
          onTap: () {
            playerId == null ? null : onTap();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [
                  AppColors.mainColor,
                  Colors.black,
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
              style: TextStyles.playerTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
