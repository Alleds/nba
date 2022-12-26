import 'package:flutter/material.dart';
import 'package:nba/player/data/model/detailed_player_dto.dart';
import '../themes/app_textstyles.dart';

class DetailedPlayerCard extends StatelessWidget {
  const DetailedPlayerCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DetailedPlayerDto data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _playerFullName(),
                _buildDivider(),
                _playerTeam(),
                _playerHeightInches(),
                _playerHeightFeet(),
                _playerWeight()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _playerFullName() {
    if (data.firstName == null || data.lastName == null) {
      return const SizedBox();
    }
    return Flexible(
      child: Text(
        '${data.firstName} ${data.lastName}',
        style: TextStyles.boldTextStyle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _playerTeam() {
    if (data.team?.fullName == null) {
      return const SizedBox();
    }
    return Flexible(
      child: Text(
        'Team: ${data.team!.fullName}',
        style: TextStyles.mainTextStyle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _playerHeightInches() {
    if (data.heightInches == null) {
      return const SizedBox();
    }
    return Flexible(
      child: Text(
        'Height Inches: ${data.heightInches}',
        style: TextStyles.mainTextStyle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _playerHeightFeet() {
    if (data.heightFeet == null) {
      return const SizedBox();
    }
    return Flexible(
      child: Text(
        'Height Feet: ${data.heightFeet}',
        style: TextStyles.mainTextStyle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _playerWeight() {
    if (data.weightPounds == null) {
      return const SizedBox();
    }
    return Flexible(
      child: Text(
        'Weight: ${data.weightPounds} pound',
        style: TextStyles.mainTextStyle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: Colors.black87,
      indent: 8,
      endIndent: 8,
      height: 16,
      thickness: 2,
    );
  }
}
