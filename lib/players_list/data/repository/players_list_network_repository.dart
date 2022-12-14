import 'package:injectable/injectable.dart';
import 'package:nba/network_service/dio_container.dart';
import 'package:nba/players_list/data/model/players_list_dto.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';

@Injectable(as: PlayersListRepository)
class PlayersListNetworkRepository extends PlayersListRepository
    with DioProviderMixin {
  @override
  Future<Iterable<PlayersListDto>> fetchPlayers({int? count, int? page}) {
    const path = 'players';
    final queries = {'page': count ?? 150, 'per_page': page ?? 25};
    try {
      return dio.get(path, queryParameters: queries).then((response) {
        return (response.data['data'] as List).map(
          (e) => PlayersListDto.fromJson(e),
        );
      });
    } catch (e) {
      throw 'something went wrong';
    }
  }
}
