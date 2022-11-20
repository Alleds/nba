import '../../data/model/player_dto.dart';

abstract class PlayersListRepository {
  Future<Iterable<PlayerDto>> fetchPlayers({int? count, int? page});
}
