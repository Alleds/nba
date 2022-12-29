import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nba/app/data/service/network_service/dio_container.dart';
import 'package:nba/players_list/data/model/player_dto.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';
import '../../../app/data/service/network_service/auth_interceptor.dart';

@Injectable(as: PlayersListRepository)
class PlayersListNetworkRepository extends PlayersListRepository
    with DioProviderMixin {

  @override
  Future<Iterable<PlayerDto>> fetchPlayers({
    int? page,
    int? count,
  }) {
    const path = 'players';
    final queries = {'page': page ?? 150, 'per_page': count ?? 25};
    try {
      return dio
          .get(
        path,
        queryParameters: queries,
        options: Options(
          extra: {AuthInterceptor.flag: true},
        ),
      )
          .then(
            (response) {
          return (response.data['data'] as List).map(
                (e) => PlayerDto.fromJson(e),
          );
        },
      );
    } catch (e) {
      throw 'something went wrong';
    }
  }
}
