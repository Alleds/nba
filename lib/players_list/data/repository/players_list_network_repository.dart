import 'package:injectable/injectable.dart';
import 'package:nba/players_list/data/network_service/dio_container.dart';
import 'package:nba/players_list/data/model/player_dto.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';

@Injectable(as: PlayersListRepository)
class PlayersListNetworkRepository extends PlayersListRepository
    with DioProviderMixin {
  @override
  Future<Iterable<PlayerDto>> fetchPlayers({int? count, int? page}) {
    const path = 'players';
    final queries = {'page': count ?? 10, 'per_page': page ?? 25};
    try {
      return dio.get(path, queryParameters: queries).then((response) {
        return (response.data['data'] as List).map(
          (e) => PlayerDto.fromJson(e),
        );
      });
    } catch (e) {
      throw 'something went wrong';
    }
  }
}
