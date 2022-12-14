import 'package:nba/player/data/model/player_dto.dart';

abstract class PlayerRepository {
  Future<PlayerDto> fetchPerson({int? id});
}
