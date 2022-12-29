import 'package:nba/player/data/model/detailed_player_dto.dart';

abstract class DetailedPlayerRepository {
  Future<DetailedPlayerDto> fetchPerson({
    int? id,
  });
}
