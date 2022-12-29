import 'package:nba/players_list/data/model/player_dto.dart';

abstract class PlayersListRepository {
  Future<Iterable<PlayerDto>> fetchPlayers({int? page, int? count});
}
