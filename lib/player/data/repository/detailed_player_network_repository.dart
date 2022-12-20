import 'package:injectable/injectable.dart';
import 'package:nba/player/data/model/detailed_player_dto.dart';
import 'package:nba/player/domain/repository/detailed_player_repository.dart';

import 'package:nba/network_service/dio_container.dart';

@Injectable(as: DetailedPlayerRepository)
class DetailedPlayerNetworkRepository extends DetailedPlayerRepository
    with DioProviderMixin {
  @override
  Future<DetailedPlayerDto> fetchPerson({
    int? id,
  }) {
    const path = 'players';

    try {
      return dio.get('$path/$id').then(
        (response) {
          return DetailedPlayerDto.fromJson(response.data);
        },
      );
    } catch (e) {
      throw 'something went wrong';
    }
  }
}
