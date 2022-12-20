import 'package:flutter/material.dart';
import 'package:nba/player/data/model/detailed_player_dto.dart';
import './app_colors.dart';

class DetailedPlayerCard extends StatelessWidget {
  const DetailedPlayerCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DetailedPlayerDto data;
  static const textStyle = TextStyle(
    fontSize: 25,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: const LinearGradient(
                colors: [
                  AppColors.playerCardGradientWhite,
                  AppColors.playerCardGradientGreen,
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
                _playerFullName(),
                _divider(),
                _playerTeam(),
                _playerHeight(),
                _playerWeight()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _playerFullName() {
    return data.firstName == null || data.lastName == null
        ? const SizedBox()
        : ConstrainedBox(
            constraints: const BoxConstraints.tightForFinite(),
            child: Text(
              '${data.firstName} ${data.lastName}',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }

  Widget _playerTeam() {
    return data.team?.fullName == null
        ? const SizedBox()
        : ConstrainedBox(
            constraints: const BoxConstraints.tightForFinite(),
            child: Text(
              'Team: ${data.team?.fullName}',
              style: textStyle,
            ),
          );
  }

  Widget _playerHeight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        data.heightFeet == null
            ? const SizedBox()
            : ConstrainedBox(
                constraints: const BoxConstraints.tightForFinite(),
                child: Text(
                  'Height Feet: ${data.heightFeet}',
                  style: textStyle,
                ),
              ),
        data.heightInches == null
            ? const SizedBox()
            : ConstrainedBox(
                constraints: const BoxConstraints.tightForFinite(),
                child: Text(
                  'Height Inches: ${data.heightInches}',
                  style: textStyle,
                ),
              )
      ],
    );
  }

  Widget _playerWeight() {
    return data.weightPounds == null
        ? const SizedBox()
        : ConstrainedBox(
            constraints: const BoxConstraints.tightForFinite(),
            child: Text(
              'Weight: ${data.weightPounds} pound',
              style: textStyle,
            ));
  }

  Divider _divider() {
    return const Divider(
      color: Colors.black87,
      indent: 8,
      endIndent: 8,
      height: 16,
      thickness: 2,
    );
  }
}
