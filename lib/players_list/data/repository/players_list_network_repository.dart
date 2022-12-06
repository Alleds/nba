import 'package:injectable/injectable.dart';
import 'package:nba/players_list/data/model/player_dto.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';

@Injectable(as: PlayersListRepository)
class PlayersListNetworkRepository implements PlayersListRepository {
  @override
  Future<Iterable<PlayerDto>> fetchPlayers() {
    // TODO: implement fetchPlayers
    throw UnimplementedError();
  }
}
