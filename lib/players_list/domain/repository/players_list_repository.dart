import 'package:nba/players_list/data/model/players_list_dto.dart';

abstract class PlayersListRepository {
  Future<Iterable<PlayersListDto>> fetchPlayers({int? count, int? page});
}
